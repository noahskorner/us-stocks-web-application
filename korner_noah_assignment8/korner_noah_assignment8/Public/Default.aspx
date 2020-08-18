<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="korner_noah_assignment8._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Public Page</h1>
	<h4>This application offers functions for stock transaction price calculator, as well as various encryption/decryption functions.</h4>
	<h4>- Member logins are encrypted and stored on server in Members.xml file</h4>
	<h4>- Session cookies are created on login and removed after session expiration.</h4>
	<h4>How to register for member services</h4>
	<p>Users may register for member services at this link: <a href="Register.aspx">Click Here to Register</a></p>
	<h4>Service Directory</h4>
	<p>
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:837pt"" width="1115">
			<colgroup>
				<col width="101" />
				<col width="116" />
				<col width="195" />
				<col width="621" />
				<col width="82" />
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
				<td><a href="../Member/Member.aspx">TryIt</a></td>
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
				<td><a href="../Member/Member.aspx">TryIt</a></td>
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
				<td><a href="../Member/Member.aspx">TryIt</a></td>
			</tr>
		</table>
	</p>
	<h4>How to test this application</h4>
	<p>
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:379pt" width="505">
			<colgroup>
				<col style="mso-width-source:userset;mso-width-alt:10020;width:206pt" width="274" />
				<col style="mso-width-source:userset;mso-width-alt:8448;width:173pt" width="231" />
			</colgroup>
			<tr height="20">
				<td class="xl65" colspan="2" height="20" width="505">Testing Authentication and Access Control</td>
			</tr>
			<tr height="20">
				<td class="xl65" height="20">Input</td>
				<td class="xl65">Output</td>
			</tr>
			<tr height="104">
				<td height="104">User is not logged in</td>
				<td class="xl66" width="231">User is able to access pages:<br />
					-Public<br />
					-Login<br />
					-Register</td>
			</tr>
			<tr height="60">
				<td class="xl66" height="60" width="274">Username = &lt;any username not registered&gt;<br />
					Password = &lt;any string&gt;</td>
				<td class="xl66" width="231">&quot;Incorrect username or password&quot;</td>
			</tr>
			<tr height="101">
				<td class="xl66" height="101" width="274">Username = Member<br />
					Password = Member</td>
				<td class="xl66" width="231">User is able to access pages:<br />
					-Public<br />
					-Member<br />
					-Login<br />
					-Register</td>
			</tr>
			<tr height="100">
				<td class="xl66" height="100" width="274"><font class="font5">**Only after User has registered </font><font class="font0">
					<br />
					Username = &lt;registered username&gt;<br />
					Password = &lt;registered password&gt;</font></td>
				<td class="xl66" width="231">User is able to access pages:<br />
					-Public<br />
					-Member<br />
					-Login<br />
					-Register</td>
			</tr>
			<tr height="120">
				<td class="xl66" height="120" width="274">Username = Staff1<br />
					Password = Staff1</td>
				<td class="xl66" width="231">User is able to access pages:<br />
					-Public<br />
					-Member<br />
					-Staff1<br />
					-Login<br />
					-Register</td>
			</tr>
			<tr height="120">
				<td class="xl66" height="120" width="274">Username = Staff2<br />
					Password = Staff2</td>
				<td class="xl66" width="231">User is able to access pages:<br />
					-Public<br />
					-Member<br />
					-Staff2<br />
					-Login<br />
					-Register</td>
			</tr>
			<tr height="20">
				<td class="xl65" colspan="2" height="20">Testing WCF Web Service #1 (Stock Transaction Price Calculator)</td>
			</tr>
			<tr height="20">
				<td class="xl65" height="20">Input</td>
				<td class="xl65">Output</td>
			</tr>
			<tr height="80">
				<td class="xl66" height="80" width="274">StockSymbol = &lt;pick one: { DJU, OEX, MID,
					<br />
					GDOW, IXCO, DJT, COMP, NDX, NYA, DJIA}&gt;<br />
					NumShares = &lt;integer&gt;</td>
				<td class="xl66" width="231">Decimal TransactionPrice</td>
			</tr>
			<tr height="20">
				<td class="xl65" colspan="2" height="20">Testing DLL Class Library (Encrypt/Decrypt String)</td>
			</tr>
			<tr height="20">
				<td class="xl65" height="20">Input</td>
				<td class="xl65">Output</td>
			</tr>
			<tr height="20">
				<td height="20">Encryption = &lt;any string&gt;</td>
				<td>String encryptedStr</td>
			</tr>
			<tr height="20">
				<td height="20">Decryption = encryptedStr</td>
				<td>String decryptedStr</td>
			</tr>
			<tr height="20">
				<td class="xl65" colspan="2" height="20">Testing WCF Web Service #2<span>&nbsp; </span>(ASU Repository String Encryption)</td>
			</tr>
			<tr height="20">
				<td class="xl65" height="20">Input</td>
				<td class="xl65">Output</td>
			</tr>
			<tr height="20">
				<td height="20">Encryption = &lt;any string&gt;</td>
				<td>String encryptedStr</td>
			</tr>
			<tr height="20">
				<td height="20">Decryption = encryptedStr</td>
				<td>String decryptedStr</td>
			</tr>
		</table>
	</p>

</asp:Content>
