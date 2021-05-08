<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormRequestList.aspx.cs" Inherits="VKR2.WebFormRequestList" %>

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
        <div class="centered">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="20px" Text="Каталог заказов книг"></asp:Label>
            <br />
            <br />
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="EntityDataSource1" Width="700px">
                <Columns>
                    <asp:BoundField DataField="IdRequestList" HeaderText="IdRequestList" ReadOnly="True" SortExpression="IdRequestList" />
                    <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                    <asp:BoundField DataField="IdReaderCardRFID" HeaderText="IdReaderCardRFID" ReadOnly="True" SortExpression="IdReaderCardRFID" />
                    <asp:BoundField DataField="IdRFIDbook" HeaderText="IdRFIDbook" ReadOnly="True" SortExpression="IdRFIDbook" />
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
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DashaVKREntities" DefaultContainerName="DashaVKREntities" EnableFlattening="False" EntitySetName="RequestList" Select="it.[IdRequestList], it.[Date], it.[IdReaderCardRFID], it.[IdRFIDbook]">
            </asp:EntityDataSource>
            
            <br />
        </div>
    </form>
</body>
</html>
