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
	public partial class Register : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void RegisterBtn_Click(object sender, EventArgs e)
		{
			//first make sure passwords match
			if(passwordInput.Value != confirmPasswordInput.Value)
			{
				messageLbl.Text = "Passwords do not match";
				return;
			}
			else
			{
				//init new encryption object using Encryption .dll file
				StringEncryptDecrypt.Encryption encryption = new StringEncryptDecrypt.Encryption();

				//we need to register the username and password within Members.xml
				//get path for Members.xml file
				string path = AppDomain.CurrentDomain.BaseDirectory;
				path += "App_Data\\Members.xml"; //store to App_Data folder on server?

				//open the Members.xml file
				XDocument doc = XDocument.Load(path);
				XElement root = doc.Element("root");
				XElement members = root.Element("Members");
				members.Add(new XElement("Member",
							new XAttribute("username", usernameInput.Value),
							//encrypt the password using StringEncryptDecrypt .dll file
							new XAttribute("password", encryption.Encrypt(passwordInput.Value))));
				//save the new member to the xml file
				doc.Save(path);
				
				//redirect to login page
				Response.Redirect("~/Login.aspx");
			}
		}


	}
}