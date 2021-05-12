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
            <h2>Каталог заказов книг</h2> 

            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="EntityDataSource1" Width="700px">
                <Columns>
                    <asp:BoundField DataField="IdRequestList" HeaderText="IdRequestList" ReadOnly="True" SortExpression="IdRequestList" />
                    <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                    <asp:BoundField DataField="IdReaderCardRFID" HeaderText="IdReaderCardRFID" ReadOnly="True" SortExpression="IdReaderCardRFID" />
                    <asp:BoundField DataField="IdRFIDbook" HeaderText="IdRFIDbook" ReadOnly="True" SortExpression="IdRFIDbook" />
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Одобрить"/>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" DeleteText="Отклонить заявку"/>
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
            <asp:Label ID="Label3" runat="server" Font-Size="20px" Text="Проверить читателя"></asp:Label>
            <br />
            <br />
&nbsp;<asp:Label ID="Label2" runat="server" Font-Size="20px" Text="Номер RFID-карты:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Font-Size="20px"></asp:TextBox>
            <br />
            <br />
            <asp:Table ID="supertable" runat="server" Width="700px" BackColor="#DEBA84" CellPadding="3" HorizontalAlign="Center" Visible="false" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                <asp:TableRow BackColor="#a55129" ForeColor="White" Font-Bold="True">
                            <asp:TableCell>
                                <asp:Label ID="Label4" runat="server" Text="Имя"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label5" runat="server" Text="Фамилия" ></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label6" runat="server" Text="Информация о книгах" ></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label7" runat="server" Text="Задолженность" ></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label8" runat="server" Text="Дата регистрации" ></asp:Label>
                            </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BackColor="#fff7e8" ForeColor="#a65024">
                            <asp:TableCell>
                                 <asp:Label ID="Label_name" runat="server" Text="name"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label_surname" runat="server" Text="surname"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label_infoBook" runat="server" Text="infoBook"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label_infoDebt" runat="server" Text="infoDebt"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label_date" runat="server" Text="date"></asp:Label>
                            </asp:TableCell>
                </asp:TableRow>


            </asp:Table>        
            <br />
        </div>
    </form>
</body>
</html>
