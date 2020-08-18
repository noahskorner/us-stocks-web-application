<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="korner_noah_assignment8.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Login</h1>
	<p>(Users must register and login to access Member page. Only Staff1 may access Staff1 page, and only Staff2 can access Staff2 page)</p>
	<h4>Testing Staff1:</h4>
	<p>username = Staff1</p>
	<p>password = Staff1</p>
	<h4>Testing Staff2:</h4>
	<p>username = Staff2</p>
	<p>password = Staff2</p>
	<p>Username:
		<input id="usernameInput" type="text" runat="server"/></p>
	<p>Password:<input id="passwordInput" type="text" runat="server"/></p>
	<p>
		<asp:Label ID="messageLbl" runat="server" ForeColor="Red"></asp:Label>
	</p>
	<br />
	<p>
		<asp:Button ID="LoginBtn" runat="server" Text="Login" Width="75px" OnClick="LoginBtn_Click" />
	</p>
	<p>
		<a href="Public/Register.aspx">Click Here to Register</a>
	</p>
</asp:Content>
