<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reader_RequestList.aspx.cs" Inherits="VKR2.Reader_RequestList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="MyStyle.css" />
    <style> 
    form {
      margin: 0 auto;
      width: 650px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="centered">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Составить запрос на книгу" Font-Size="20px"></asp:Label>
            <br />
        </div>
        <div>
            <asp:Table ID="Table1" runat="server" Width="600px" CellPadding="5" HorizontalAlign="Center">
                <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label2" runat="server" Text="Номер читательского билета:" Font-Size="20px"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                            </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="Номер книги(Id):" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TextBox2" runat="server"  Width="300px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>          
        </div>

        <div>
            <br />
            <asp:Button ID="BtnOrder" runat="server" OnClick="BtnOrder_Click" Text="Заказать книгу" />
            <br />
        </div>
        
        <div class="centered"> 
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Red" Visible="False" Font-Size="20px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Font-Size="20px" Text="Найти книгу:"></asp:Label>
        </div>
        <div>
            <asp:Table ID="Table2" runat="server" Width="600px" CellPadding="5" HorizontalAlign="Center">
                <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label8" runat="server" Text="Название:" Font-Size="20px"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="TextBoxName" runat="server" Width="300px"></asp:TextBox>
                            </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="Автор:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TextBoxAutor" runat="server" Width="300px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label10" runat="server" Text="Id книги:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TextBoxId" runat="server" Width="300px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Label ID="LabelError" runat="server" Font-Size="20px" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="BtnSearch" runat="server" Text="Найти" OnClick="BtnSearch_Click" />
            <br />
        </div>
        <div>
            <br />
            <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
            <br />

            <asp:Label ID="Label6" runat="server" Font-Size="20px" Text="Каталог книг:"></asp:Label>

            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="IdBook" DataSourceID="EntityDataSource1">
                <Columns>
                    <asp:BoundField DataField="IdBook" HeaderText="IdBook" ReadOnly="True" SortExpression="IdBook" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                    <asp:BoundField DataField="Publish" HeaderText="Publish" SortExpression="Publish" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Pages" HeaderText="Pages" SortExpression="Pages" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:CheckBoxField DataField="Sum" HeaderText="Sum" SortExpression="Sum" />
                    <asp:BoundField DataField="IdRFIDbook" HeaderText="IdRFIDbook" SortExpression="IdRFIDbook" />
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
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DashaVKREntities" DefaultContainerName="DashaVKREntities" EnableFlattening="False" EntitySetName="Book">
            </asp:EntityDataSource>
            <br />
        </div>
    </form>
</body>
</html>
