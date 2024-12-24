<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 519px">
    <form id="form1" runat="server" style="line-height: normal; text-align: center">
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Addition of two numbers"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;Enter number 1&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="173px"></asp:TextBox>
        <br />
        <br />
        Enter number 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="170px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Click Me!!" />
    </form>
</body>
</html>
