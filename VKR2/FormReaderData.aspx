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
        <div class="centered">
            <br /> 
            <h2>Поиск данных о читателе</h2>
            
         </div>
         <div>
            <asp:Label ID="Label2" runat="server" Text="Номер читательского билета:" Font-Size="20px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
             <br />
             <asp:Button ID="Button2" runat="server" Text="Найти информацию" OnClick="Button2_Click" />
            <br />
             <asp:Button ID="Button1" runat="server" Text="Выдать книгу" OnClick="Button1_Click" />
            <br />
             <br />
            <asp:Table ID="Table_reader" runat="server" Width="700px" BackColor="#DEBA84" CellPadding="3" HorizontalAlign="Center" Visible="false" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                <asp:TableRow BackColor="#a55129" ForeColor="White" Font-Bold="True">
                            <asp:TableCell>
                                <asp:Label ID="Label9" runat="server" Text="Id читателя"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label1" runat="server" Text="Имя"></asp:Label>
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
                                 <asp:Label ID="Label_id" runat="server" Text="name"></asp:Label>
                            </asp:TableCell>
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
            <asp:Label ID="Label4" runat="server" Text="Читательские билеты: " Font-Size="20px"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="700px" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="EntityDataSource1">
                <Columns>
                    <asp:BoundField DataField="IdReaderCardRFID" HeaderText="IdReaderCardRFID" ReadOnly="True" SortExpression="IdReaderCardRFID" />
                    <asp:BoundField DataField="IdReader" HeaderText="IdReader" ReadOnly="True" SortExpression="IdReader" />
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
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DashaVKREntities" DefaultContainerName="DashaVKREntities" EnableFlattening="False" EntitySetName="ReaderCard" Select="it.[IdReaderCardRFID], it.[IdReader], it.[CreatedDate]">
            </asp:EntityDataSource>
        </div>
    </form>
</body>
</html>
