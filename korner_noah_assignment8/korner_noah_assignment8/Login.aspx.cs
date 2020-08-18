using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using StringEncryptDecrypt;

namespace korner_noah_assignment8
{
	public partial class Login : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void LoginBtn_Click(object sender, EventArgs e)
		{
			//validate username and password against Members.xml
			//user is authorization type staff1
			if(authenticateStaff1(usernameInput.Value, passwordInput.Value))
			{
				FormsAuthentication.Authenticate("Staff1", "Staff1");
				FormsAuthentication.RedirectFromLoginPage("Staff1", true);
			}
			//user is authorization type staff2
			else if (authenticateStaff2(usernameInput.Value, passwordInput.Value))
			{
				FormsAuthentication.Authenticate("Staff2", "Staff2");
				FormsAuthentication.RedirectFromLoginPage("Staff2", true);
			}
			//user is authorization type member
			else if (authenticateUser(usernameInput.Value, passwordInput.Value))
			{
				FormsAuthentication.Authenticate("Member", "Member");
				FormsAuthentication.RedirectFromLoginPage("Member", true);
			}
			//user remains authorization type anonymous
			else
			{
				messageLbl.Text = "Incorrect username or password.";
			}
		}

		protected bool authenticateUser(string username, string password)
		{
			//init new encryption object using Encryption .dll file
			StringEncryptDecrypt.Encryption encryption = new StringEncryptDecrypt.Encryption();

			//get path for Members.xml file
			string path = AppDomain.CurrentDomain.BaseDirectory;
			path += "App_Data\\Members.xml"; //store to App_Data folder on server?

			//iterate through level 1 elements
			foreach (XElement level1Element in XElement.Load(path).Elements("Members"))
			{
				//iterate through level 2 elements
				foreach (XElement level2Element in level1Element.Elements("Member"))
				{
					string tempUsername = level2Element.Attribute("username").Value;
					string tempPassword = encryption.Decrypt(level2Element.Attribute("password").Value);
					//check each tempUsername/tempPassword against inputted username & password
					if (username == tempUsername && password == tempPassword)
					{
						//both username and password match ->authenticate the user
						return true;
					}
				}
			}

			//no matching username or password found in Members.xml -> do not authenticate the user
			return false;
		}

		protected bool authenticateStaff1(string username, string password)
		{
			//get path for Members.xml file
			string path = AppDomain.CurrentDomain.BaseDirectory;
			path += "App_Data\\Members.xml"; //store to App_Data folder on server?

			//iterate through level 1 elements
			foreach (XElement level1Element in XElement.Load(path).Elements("Staff1"))
			{
				//iterate through level 2 elements
				foreach (XElement level2Element in level1Element.Elements("Member"))
				{
					string tempUsername = level2Element.Attribute("username").Value;
					string tempPassword = level2Element.Attribute("password").Value;
					//check each tempUsername/tempPassword against inputted username & password
					if (username == tempUsername && password == tempPassword)
					{
						//both username and password match ->authenticate the user
						return true;
					}
				}
			}

			//no matching username or password found in Members.xml -> do not authenticate the user
			return false;
		}

		protected bool authenticateStaff2(string username, string password)
		{
			//get path for Members.xml file
			string path = AppDomain.CurrentDomain.BaseDirectory;
			path += "App_Data\\Members.xml"; //store to App_Data folder on server?

			//iterate through level 1 elements
			foreach (XElement level1Element in XElement.Load(path).Elements("Staff2"))
			{
				//iterate through level 2 elements
				foreach (XElement level2Element in level1Element.Elements("Member"))
				{
					string tempUsername = level2Element.Attribute("username").Value;
					string tempPassword = level2Element.Attribute("password").Value;
					//check each tempUsername/tempPassword against inputted username & password
					if (username == tempUsername && password == tempPassword)
					{
						//both username and password match ->authenticate the user
						return true;
					}
				}
			}

			//no matching username or password found in Members.xml -> do not authenticate the user
			return false;
		}
	}
}