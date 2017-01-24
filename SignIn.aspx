<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />
       <script src="Scripts\Yummly.js"></script>
    <script src="Scripts/jquery.cookie.js"></script>
    <script src="Scripts\JavaScript.js"></script>
    <script type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-left: 100px;font-size: 20px;">
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="EmailText"></asp:TextBox></td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is Required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
    </tr>
     <tr>
        <td>Password</td>
        <td> <asp:TextBox ID="TextBox6" runat="server" CssClass="PasswordText"></asp:TextBox></td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
    </tr>
    <tr>
        <td>
            <input id="Button2" value="Sign In" type="button" class="button1" style="background-color: limegreen;border-color: limegreen;width: 100px; font-size: 17px;margin-bottom: 100px;margin-top: 30px;"/></td>

    </tr>
</table>
</asp:Content>

