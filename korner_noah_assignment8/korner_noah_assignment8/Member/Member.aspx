<%@ Page Title="Member Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="korner_noah_assignment8.Member" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<h1>Member Page</h1>
	<h4>This application offers functions for stock transaction price calculator, as well as various encryption/decryption functions.</h4>
	<h4>WCF Web Service #1 TryIt</h4>
	<h5>Transaction Price Calculator</h5>
<p>(Only includes stock symbols: DJU, OEX, MID, GDOW, IXCO, DJT, COMP, NDX, NYA, and DJIA)</p>
	<p>Stock Symbol: 
		<input id="symbolInput" type="text" runat="server"/>Number of Shares to Purchase:<input id="numSharesInput" type="text" runat="server"/><asp:Button ID="transactionBtn" runat="server" Text="Get Transaction Price" OnClick="transactionBtn_Click" />
		<asp:Label ID="transactionLbl" runat="server" ForeColor="Green"></asp:Label>
	</p>
	<h4>DLL Class Library Module TryIt</h4>
	<p>Enter String to Encrypt:<input id="encryptStringInput" type="text" runat="server"/><asp:Button ID="encryptBtn" runat="server" OnClick="encryptBtn_Click" Text="Encrypt String" />
		<asp:Label ID="encryptedLbl" runat="server" ForeColor="Red"></asp:Label>
	</p>
	<p>Enter String to Decrypt:<input id="decryptStringInput" type="text" runat="server"/><asp:Button ID="decryptBtn" runat="server" Text="Decrypt String" OnClick="decryptBtn_Click" />
		<asp:Label ID="decryptedLbl" runat="server" ForeColor="Red"></asp:Label>
	</p>
	<h4>WCF Web Service #2 TryIt</h4>
	<p>Enter String to Encrypt:<input id="encryptStringInput0" type="text" runat="server"/><asp:Button ID="encryptBtn0" runat="server" OnClick="encryptBtn0_Click" Text="Encrypt String" />
		<asp:Label ID="encryptedLbl0" runat="server" ForeColor="Red"></asp:Label>
	</p>
	<p>Enter String to Decrypt:<input id="decryptStringInput0" type="text" runat="server"/><asp:Button ID="decryptBtn0" runat="server" Text="Decrypt String" OnClick="decryptBtn0_Click" />
		<asp:Label ID="decryptedLbl0" runat="server" ForeColor="Red"></asp:Label>
	</p>
	<h4>Service Directory</h4>
	<p>
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:837pt" width="1115">
			<colgroup>
				<col style="mso-width-source:userset;mso-width-alt:3693;width:76pt" width="101" />
				<col style="mso-width-source:userset;mso-width-alt:4242;width:87pt" width="116" />
				<col style="mso-width-source:userset;mso-width-alt:7131;width:146pt" width="195" />
				<col style="mso-width-source:userset;mso-width-alt:22710;width:466pt" width="621" />
				<col style="mso-width-source:userset;mso-width-alt:2998;width:62pt" width="82" />
			</colgroup>
			<tr height="20">
				<td class="xl65" height="20" width="101">Provider Name</td>
				<td class="xl65" width="116">Type</td>
				<td class="xl66" width="195">Operations</td>
				<td class="xl65" width="621">Description</td>
				<td class="xl65" width="82">TryIt Link</td>
			</tr>
			<tr height="120">
				<td height="120">Noah Korner</td>
				<td>WCF Web Service</td>
				<td class="xl67" width="195"><font class="font6">CalcTransactionPrice</font><font class="font0"><br />
					</font><font class="font5">Input:</font><font class="font0"><br />
					String stockSymbol<br />
					Int numShares<br />
					</font><font class="font5">Output:</font><font class="font0"><br />
					Decimal transactionPrice</font></td>
				<td>This service calculates the transaction price of a given stock symbol and number of shares to buy.</td>
				<td><a href="Member.aspx">TryIt</a></td>
			</tr>
			<tr height="200">
				<td height="200">Noah Korner</td>
				<td>DLL Class Library</td>
				<td class="xl67" width="195"><font class="font6">Encrypt<br />
					</font><font class="font5">Input:</font><font class="font0"><br />
					String str<br />
					</font><font class="font5">Ouput:</font><font class="font0"><br />
					String encryptedStr<br />
					</font><font class="font6">Decrypt</font><font class="font0"><br />
					</font><font class="font5">Input:</font><font class="font0"><br />
					String encryptedStr<br />
					</font><font class="font5">Ouput:</font><font class="font0"><br />
					String str</font></td>
				<td>This services uses a DLL class library to encrypt and decrypt strings.</td>
				<td><a href="Member.aspx">TryIt</a></td>
			</tr>
			<tr height="200">
				<td height="200">ASU repository</td>
				<td>WCF Web Service</td>
				<td class="xl67" width="195"><font class="font6">Encrypt<br />
					</font><font class="font5">Input:</font><font class="font0"><br />
					String str<br />
					</font><font class="font5">Ouput:</font><font class="font0"><br />
					String encryptedStr<br />
					</font><font class="font6">Decrypt</font><font class="font0"><br />
					</font><font class="font5">Input:</font><font class="font0"><br />
					String encryptedStr<br />
					</font><font class="font5">Ouput:</font><font class="font0"><br />
					String str</font></td>
				<td>This service uses a WCF Web Service to encrypt and descript strings.</td>
				<td><a href="Member.aspx">TryIt</a></td>
			</tr>
		</table>
	</p>
</asp:Content>
