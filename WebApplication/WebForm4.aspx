<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Utility Tasks</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <h1>Simple Utility Tasks</h1>

            <h2>Simple Calculator</h2>
            <asp:TextBox ID="txtNum1" runat="server" Width="50"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlOperator" runat="server">
                <asp:ListItem>+</asp:ListItem>
                <asp:ListItem>-</asp:ListItem>
                <asp:ListItem>*</asp:ListItem>
                <asp:ListItem>/</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNum2" runat="server" Width="50"></asp:TextBox>
            <br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
            <br />
            <asp:Label ID="lblCalculatorResult" runat="server" Text=""></asp:Label>
            <br />

            <h2>Unit Converter</h2>
            <label>Kilometers:&nbsp;&nbsp;&nbsp; </label>
            &nbsp;<asp:TextBox ID="txtKilometers" runat="server" Width="50"></asp:TextBox>
            <br />
            <asp:Button ID="btnConvertKmToMiles" runat="server" Text="Convert" OnClick="btnConvertKmToMiles_Click" />
            <br />
            <asp:Label ID="lblMiles" runat="server" Text=""></asp:Label>
            <br />
            <br />

            <h2>Temperature Converter</h2>
            <label>Celsius:</label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCelsius" runat="server" Width="50"></asp:TextBox>
            <br />
            <asp:Button ID="btnConvertToFahrenheit" runat="server" Text="Convert" OnClick="btnConvertToFahrenheit_Click" />
            <br />
            <asp:Label ID="lblFahrenheit" runat="server" Text=""></asp:Label>
            <br />
            <br />

            <h2>Date and Time</h2>
            <asp:Label ID="lblDateTime" runat="server" Text=""></asp:Label>
            <br />
            <br />

            <h2>Random Number Generator</h2>
            <asp:Button ID="btnGenerateRandom" runat="server" Text="Generate Random Number" OnClick="btnGenerateRandom_Click" />
            <br />
            <asp:Label ID="lblRandomNumber" runat="server" Text=""></asp:Label>
            <br />
            <br />

            <h2>Reverse a String</h2>
            <asp:TextBox ID="txtReverseString" runat="server" Width="150"></asp:TextBox>
            <br />
            <asp:Button ID="btnReverseString" runat="server" Text="Reverse" OnClick="btnReverseString_Click" />
            <br />
            <asp:Label ID="lblReversedString" runat="server" Text=""></asp:Label>
            <br />

            <h2>Count Vowels</h2>
            <asp:TextBox ID="txtVowelString" runat="server" Width="150"></asp:TextBox>
            <br />
            <asp:Button ID="btnCountVowels" runat="server" Text="Count Vowels" OnClick="btnCountVowels_Click" />
            <br />
            <asp:Label ID="lblVowelCount" runat="server" Text=""></asp:Label>
            <br />

            <h2>Password Strength Checker</h2>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150"></asp:TextBox>
            <br />
            <asp:Button ID="btnCheckPassword" runat="server" Text="Check Strength" OnClick="btnCheckPassword_Click" />
            <br />
            <asp:Label ID="lblPasswordStrength" runat="server" Text=""></asp:Label>
            <br />

            <h2>Prime Number Checker</h2>
            <asp:TextBox ID="txtPrimeNumber" runat="server" Width="150"></asp:TextBox>
            <br />
            <asp:Button ID="btnCheckPrime" runat="server" Text="Check Prime" OnClick="btnCheckPrime_Click" />
            <br />
            <asp:Label ID="lblPrimeResult" runat="server" Text=""></asp:Label>
            <br />


            <h2>Palindrome Checker</h2>
            <asp:TextBox ID="txtPalindrome" runat="server" Width="150"></asp:TextBox>
            <br />
            <asp:Button ID="btnCheckPalindrome" runat="server" Text="Check Palindrome" OnClick="btnCheckPalindrome_Click" />
            <br />
            <asp:Label ID="lblPalindromeResult" runat="server" Text=""></asp:Label>
            <br />

        </div>
    </form>
</body>
</html>
