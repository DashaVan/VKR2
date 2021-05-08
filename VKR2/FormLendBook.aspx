<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormLendBook.aspx.cs" Inherits="VKR2.FormLendBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="MyStyle.css" />
    <title></title>
    <style>
        form {
            margin: 0 auto;
            width: 800px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Button ID="BtnLend" runat="server" OnClick="BtnLend_Click" Text="Выданные книги" />
            <asp:Button ID="BtnReturn" runat="server" OnClick="BtnReturn_Click" Text="Поступившие книги" />
            <asp:Button ID="BtnFund" runat="server" OnClick="BtnFund_Click" Text="Фонд книг" />
            <br />
            <br />
            <asp:GridView ID="GridViewLend" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="EntityDataSource1" AllowSorting="True" Visible="False">
                <Columns>
                    <asp:BoundField DataField="IdLendBook" HeaderText="IdLendBook" ReadOnly="True" SortExpression="IdLendBook" />
                    <asp:BoundField DataField="IdRFIDbook" HeaderText="IdRFIDbook" ReadOnly="True" SortExpression="IdRFIDbook" />
                    <asp:BoundField DataField="IdReaderCardRFID" HeaderText="IdReaderCardRFID" ReadOnly="True" SortExpression="IdReaderCardRFID" />
                    <asp:BoundField DataField="IdLibrarianRFID" HeaderText="IdLibrarianRFID" ReadOnly="True" SortExpression="IdLibrarianRFID" />
                    <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
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
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DashaVKREntities" DefaultContainerName="DashaVKREntities" EnableFlattening="False" EntitySetName="LendBook" Select="it.[IdLendBook], it.[IdRFIDbook], it.[IdReaderCardRFID], it.[IdLibrarianRFID], it.[Date]">
            </asp:EntityDataSource>
            <asp:GridView ID="GridViewReturn" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="EntityDataSource2" Visible="False">
                <Columns>
                    <asp:BoundField DataField="IdReturnBook" HeaderText="IdReturnBook" ReadOnly="True" SortExpression="IdReturnBook" />
                    <asp:BoundField DataField="IdReaderCardRFID" HeaderText="IdReaderCardRFID" ReadOnly="True" SortExpression="IdReaderCardRFID" />
                    <asp:BoundField DataField="IdLibrarianRFID" HeaderText="IdLibrarianRFID" ReadOnly="True" SortExpression="IdLibrarianRFID" />
                    <asp:BoundField DataField="IdRFIDbook" HeaderText="IdRFIDbook" ReadOnly="True" SortExpression="IdRFIDbook" />
                    <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
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
            <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=DashaVKREntities" DefaultContainerName="DashaVKREntities" EnableFlattening="False" EntitySetName="ReturnBook" Select="it.[IdReturnBook], it.[IdReaderCardRFID], it.[IdLibrarianRFID], it.[IdRFIDbook], it.[Date]">
            </asp:EntityDataSource>
            <asp:GridView ID="GridViewBook" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="EntityDataSource3" Width="735px" Visible="False">
                <Columns>
                    <asp:BoundField DataField="IdRFIDbook" HeaderText="IdRFIDbook" ReadOnly="True" SortExpression="IdRFIDbook" />
                    <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" SortExpression="Title" />
                    <asp:BoundField DataField="Autor" HeaderText="Autor" ReadOnly="True" SortExpression="Autor" />
                    <asp:BoundField DataField="Publish" HeaderText="Publish" ReadOnly="True" SortExpression="Publish" />
                    <asp:BoundField DataField="Year" HeaderText="Year" ReadOnly="True" SortExpression="Year" />
                    <asp:BoundField DataField="Pages" HeaderText="Pages" ReadOnly="True" SortExpression="Pages" />
                    <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                    <asp:CheckBoxField DataField="Sum" HeaderText="Sum" ReadOnly="True" SortExpression="Sum" />
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
            <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=DashaVKREntities" DefaultContainerName="DashaVKREntities" EnableFlattening="False" EntitySetName="Book" Select="it.[IdRFIDbook], it.[Title], it.[Autor], it.[Publish], it.[Year], it.[Pages], it.[Date], it.[Sum]">
            </asp:EntityDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
