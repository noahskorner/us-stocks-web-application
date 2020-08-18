using System;

namespace StringEncryptDecrypt
{
	public class Encryption
	{
		public string Encrypt(string password)
		{
			//simple encryption algorithm
			byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(password);
			string encrypted = Convert.ToBase64String(b);

			return encrypted;
		}
		public string Decrypt(string password)
		{
			//simple decrpytion algorithm
			byte[] b;
			string decrypted;

			b = Convert.FromBase64String(password);
			decrypted = System.Text.ASCIIEncoding.ASCII.GetString(b);

			return decrypted;
		}
	}
}
