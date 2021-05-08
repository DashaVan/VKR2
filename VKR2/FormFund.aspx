<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormFund.aspx.cs" Inherits="VKR2.FormFund" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Фонд книг в библиотеке"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="IdBook" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="IdBook" HeaderText="IdBook" ReadOnly="True" SortExpression="IdBook" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                <asp:BoundField DataField="Publish" HeaderText="Publish" SortExpression="Publish" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Pages" HeaderText="Pages" SortExpression="Pages" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:CheckBoxField DataField="Sum" HeaderText="Sum" SortExpression="Sum" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DashaVKRConnectionString3 %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
    </form>
</body>
</html>
