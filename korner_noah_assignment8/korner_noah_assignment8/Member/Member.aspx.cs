using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StringEncryptDecrypt;

namespace korner_noah_assignment8
{
	public partial class Member : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void transactionBtn_Click(object sender, EventArgs e)
		{
			//open the proxy
			StockRelatedWebServices.Service1Client proxy = new StockRelatedWebServices.Service1Client();
			//store variables
			string stockSymbol = symbolInput.Value;
			int numShares = Convert.ToInt32(numSharesInput.Value);
			//calculate transaction price
			decimal transactionPrice = proxy.CalcTransactionPrice(stockSymbol, numShares);
			//display transaction price
			transactionLbl.Text = string.Format("{0:C}", transactionPrice);
			//close the client
			proxy.Close();
		}

		protected void encryptBtn_Click(object sender, EventArgs e)
		{
			//init new encryption object from StringEncryptDecrpy .dll file
			StringEncryptDecrypt.Encryption encryption = new StringEncryptDecrypt.Encryption();
			//encrypt the string and display it
			encryptedLbl.Text = encryption.Encrypt(encryptStringInput.Value);
		}

		protected void decryptBtn_Click(object sender, EventArgs e)
		{
			//init new encryption object from StringEncryptDecrpy .dll file
			StringEncryptDecrypt.Encryption encryption = new StringEncryptDecrypt.Encryption();
			//decrpyt the string and display it
			decryptedLbl.Text = encryption.Decrypt(decryptStringInput.Value);
		}
		protected void encryptBtn0_Click(object sender, EventArgs e)
		{
			//open the client
			EncrpytionService.ServiceClient proxy = new EncrpytionService.ServiceClient();
			//encrypt the string and display it
			encryptedLbl0.Text = proxy.Encrypt(encryptStringInput0.Value);
			//close the client
			proxy.Close();
		}

		protected void decryptBtn0_Click(object sender, EventArgs e)
		{
			//open the client
			EncrpytionService.ServiceClient proxy = new EncrpytionService.ServiceClient();
			//encrypt the string and display it
			decryptedLbl0.Text = proxy.Decrypt(decryptStringInput0.Value);
			//close the client
			proxy.Close();
		}
	}
}