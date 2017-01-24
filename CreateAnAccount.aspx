<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateAnAccount.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="../StyleSheet.css" rel="stylesheet" />
              <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />

  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />
       <script src="Scripts\Yummly.js"></script>
    <script src="Scripts/jquery.cookie.js"></script>
    <script src="Scripts\JavaScript.js"></script>
    <script type="text/javascript">
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
<table style="margin-left: 100px;font-size: 20px;">
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="EmailText"></asp:TextBox></td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    </tr>
     <tr>
        <td>Password</td>
        <td> <asp:TextBox ID="TextBox2" runat="server" CssClass="PasswordText"></asp:TextBox></td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    </tr>
     <tr>
        <td>FirstName</td>
        <td><asp:TextBox ID="TextBox3" runat="server" CssClass="FirstNameText"></asp:TextBox></td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    </tr>
     <tr>
        <td>LastName</td>
        <td><asp:TextBox ID="TextBox4" runat="server" CssClass="LastNameText"></asp:TextBox></td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    </tr>
    <tr>

    <asp:Label runat="server" ID="labelaccount"></asp:Label>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="button1" style="background-color: limegreen;border-color: limegreen;width: 186px; font-size: 17px;margin-bottom: 100px;margin-top: 30px;" Text="Create An Account" ></asp:Button>
            <label id="label12"></label>
        </td>

    </tr>
</table>
</asp:Content>

