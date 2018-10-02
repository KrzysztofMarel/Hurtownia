<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_produkt" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="234px" Width="408px" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="nazwa" HeaderText="Nazwa produktu" SortExpression="nazwa" />
        <asp:BoundField DataField="kod" HeaderText="Kod" SortExpression="kod" />
        <asp:BoundField DataField="cena" HeaderText="Cena" SortExpression="cena" />
    </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hurtowniaConnectionString1 %>" DeleteCommand="DELETE FROM [produkt] WHERE [id_produkt] = @id_produkt" InsertCommand="INSERT INTO [produkt] ([nazwa], [kod], [cena]) VALUES (@nazwa, @kod, @cena)" ProviderName="<%$ ConnectionStrings:hurtowniaConnectionString1.ProviderName %>" SelectCommand="SELECT [id_produkt], [nazwa], [kod], [cena] FROM [produkt]" UpdateCommand="UPDATE [produkt] SET [nazwa] = @nazwa, [kod] = @kod, [cena] = @cena WHERE [id_produkt] = @id_produkt">
    <DeleteParameters>
        <asp:Parameter Name="id_produkt" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nazwa" Type="String" />
        <asp:Parameter Name="kod" Type="String" />
        <asp:Parameter Name="cena" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nazwa" Type="String" />
        <asp:Parameter Name="kod" Type="String" />
        <asp:Parameter Name="cena" Type="Decimal" />
        <asp:Parameter Name="id_produkt" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>

