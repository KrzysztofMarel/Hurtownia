<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="display: flex; justify-content: space-between;">
        <div>
            <h3>Kontakt</h3>
            <p>Czynne od poniedziałku do piątku</p>
            <p>Adres do wysyłki ul. Wojska Polskiego 1</p>
            <p>82 - 300 Elbląg</p>
            <p>Kom. +48 569 655 785</p>
            <p>E - mail: stefanmilenium@wp.pl</p>
        </div>

        <div style="width: 50%;">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="ImieNazwLabel" runat="server" Text=""></asp:Label><br />
                        <asp:TextBox ID="ImieNazwTextBox" runat="server" ></asp:TextBox>
                    </td>
                    <td>

                    </td>
                    <td>
                        <asp:Label ID="TelLabel" runat="server" Text="Label"></asp:Label><br />
                        <asp:TextBox ID="TelTextBox" runat="server" ></asp:TextBox>
                    </td>
                </tr>
            </table>


            
            
                
            
        </div>

    </div>


</asp:Content>

