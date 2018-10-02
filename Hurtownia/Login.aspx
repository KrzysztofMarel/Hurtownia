<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Zaloguj się</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet" /> 
    <style type="text/css">
        * {
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }

        main {
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
            min-width: 350px;
            padding: 20px;
        }

        #alertPanel, #loginTextBox, #hasloTextBox, #zalogujButton {
            min-width: 100%;
            display: block;
            padding: 5px;
            margin: 10px 0;
        }

        #zalogujButton {
            color: #fff;
            background-color: #1976d2;
            border: none;
        }

        #zalogujButton:hover {
            background-color: #1565c0;
        }

        #alertPanel {
            padding: 20px;
            background-color: pink;
            border: 3px solid red;
            color: red;
            font-weight: 700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <asp:Panel ID="alertPanel" runat="server">Błędny login lub hasło</asp:Panel>
            <asp:TextBox ID="loginTextBox" runat="server"></asp:TextBox>
            <asp:TextBox ID="hasloTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="zalogujButton" runat="server" Text="Zaloguj" OnClick="zalogujButton_Click" />
        </main>
    </form>
</body>
</html>
