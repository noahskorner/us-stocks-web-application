<%@ Page Title="Register Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="korner_noah_assignment8.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Register</h1>
	<p>Enter Username:<input id="usernameInput" type="text" runat="server"/></p>
	<p>Enter Password:<input id="passwordInput" type="text" runat="server"/></p>
	<p>Confirm Password:<input id="confirmPasswordInput" type="text" runat="server"/></p>
	<p>
		<asp:Label ID="messageLbl" runat="server" ForeColor="Red"></asp:Label>
	</p>
	<br />
	<p>
		<asp:Button ID="RegisterBtn" runat="server" Text="Register" OnClick="RegisterBtn_Click" />
	</p>
</asp:Content>
