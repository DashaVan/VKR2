<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormReaderData.aspx.cs" Inherits="VKR2.FormReaderData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="MyStyle.css" />
    <title></title>
    <style>
        form {
            margin: 0 auto;
            width: 700px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Size="20px" Text="Поиск данных о читателе"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Номер читательского билета:" Font-Size="20px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Читательские билеты: " Font-Size="20px"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="EntityDataSource1">
                <Columns>
                    <asp:BoundField DataField="IdReaderCardRFID" HeaderText="IdReaderCardRFID" ReadOnly="True" SortExpression="IdReaderCardRFID" />
                    <asp:BoundField DataField="IdReader" HeaderText="IdReader" ReadOnly="True" SortExpression="IdReader" />
                    <asp:BoundField DataField="InfoBook" HeaderText="InfoBook" ReadOnly="True" SortExpression="InfoBook" />
                    <asp:BoundField DataField="InfoDebt" HeaderText="InfoDebt" ReadOnly="True" SortExpression="InfoDebt" />
                    <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" ReadOnly="True" SortExpression="CreatedDate" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DashaVKREntities" DefaultContainerName="DashaVKREntities" EnableFlattening="False" EntitySetName="ReaderCard" Select="it.[IdReaderCardRFID], it.[IdReader], it.[InfoBook], it.[InfoDebt], it.[CreatedDate]">
            </asp:EntityDataSource>
        </div>
    </form>
</body>
</html>
