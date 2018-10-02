<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rejestracja.aspx.cs" Inherits="Rejestracja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
        .auto-style2 {
            height: 34px;
            width: 617px;
        }
        .auto-style3 {
            width: 617px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Utwórz nowe konto</h3>
            <fieldset class="register">
                <legend>Rejestracja</legend>
                <table>
                    <tr>
                        <td class="auto-style1"><asp:Label ID="LoginLabel" runat="server" Text="Login"></asp:Label></td>
                        <td class="auto-style2"><asp:TextBox ID="LoginTextBox" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator" runat="server" ControlToValidate="LoginTextBox" 
                                Display="Static" ErrorMessage="Nazwa użytkownika jest wymagana." ToolTip="User Name is required.">
                            </asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="HasloLabel" runat="server" Text="Hasło"></asp:Label></td>
                        <td class="auto-style3"><asp:TextBox ID="HasloTextBox" runat="server" ControlToValidate="HasloTextBox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="HasloRegularExpressionValidator" runat="server" 
                        ErrorMessage="Hasło musi zwierać min 5 znaków oraz min jedną liczbę" ControlToValidate="HasloTextBox"
                        ValidationExpression="^.*(?=.{5,})(?=.*[\d]).*$"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><asp:Label ID="PowtorzHasloLabel" runat="server" Text="Powtorz hasło"></asp:Label></td>
                        <td class="auto-style2"><asp:TextBox ID="PowtorzHasloTextBox" runat="server"></asp:TextBox>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="HasloTextBox" ControlToValidate="PowtorzHasloTextBox" ErrorMessage="Hasła nie są identyczne "></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="EmailLabel" runat="server" Text="E-mail"></asp:Label></td>
                        <td class="auto-style3"><asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="EmailTextBox" 
                        CssClass="failureNotification" ErrorMessage="E-mail jest wymagany." ToolTip="E-mail jest wymagany." 
                        ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="Nie podano addresu email"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailTextBox">
                        </asp:RegularExpressionValidator>
                    </tr>
                    
                    <tr>
                        <td></td><td class="auto-style3"><asp:Button ID="Button" runat="server" Text="Zajerestruj się" OnClick="zajerestrujButton_Click"/></td>
                    </tr>
                </table>
            </fieldset>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceKonto" runat="server" ConnectionString="<%$ ConnectionStrings:hurtowniaConnectionString1 %>" InsertCommand="INSERT INTO konto(haslo, nazwa_konta, rodzaj_konta, email) VALUES (@haslo,@nazwa,@rozka,@email);
SELECT @kontoId = SCOPE_IDENTITY();" SelectCommand="SELECT * FROM konto" ProviderName="<%$ ConnectionStrings:hurtowniaConnectionString1.ProviderName %>">
            <InsertParameters>
                <asp:ControlParameter ControlID="HasloTextBox" Name="haslo" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="LoginTextBox" Name="nazwa" PropertyName="Text" Type="String" />
                <asp:Parameter DefaultValue="klient" Name="rozka" Type="String" />
                <asp:ControlParameter ControlID="EmailTextBox" DefaultValue="" Name="email" PropertyName="Text" Type="String" />
                <asp:Parameter Name="kontoId" Type="Int32"/>
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
