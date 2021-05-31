<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormReturnBook.aspx.cs" Inherits="VKR2.FormReturnBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="MyStyle.css" />
    <style> 
      form {
      margin: 0 auto;
      width: 800px;
      }
      input[type=text] {
      width: 100%;
      font-size:20px;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="centered">
            <h2>Добавить или вернуть книгу в библиотеку</h2>
            <br />
        </div>
        <div>
            <asp:Table ID="Table1" runat="server" Width="500px" CellPadding="5" HorizontalAlign="Center">
                 <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label2" runat="server" Text="Название книги:" Font-Size="20px"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="TbTitle" runat="server"></asp:TextBox>
                            </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="Автор:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TbAutor" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Text="Издательство:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TbPublish" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="Год:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TbYear" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Text="Количество страниц:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TbPages" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label10" runat="server" Text="Местоположение:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TbPlace" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label8" runat="server" Text="IdRFIDbook:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxRFID" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Text="IdRFIDLibrarian:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxLibrarian" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="IdRFIDReader:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxReader" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table> 
            <br />
            <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Добавить книгу" />
            <br /> 
            
            <asp:Button ID="Button1" runat="server" Text="Вернуть книгу" Margin-top="10px" OnClick="Button1_Click"/>
            <br /> 
        </div>
        <p class="centered">
            <asp:Label ID="LabelError" runat="server" ForeColor="Red" Text="Label" Visible="False" Font-Size="20px"></asp:Label>
            <br /> 
            <asp:Label ID="Label1" runat="server" Text="Фонд книг библиотеки:" Font-Size="20px"></asp:Label>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="IdBook" DataSourceID="EntityDataSource1">
                <Columns>
                    <asp:BoundField DataField="IdRFIDbook" HeaderText="IdRFIDbook" SortExpression="IdRFIDbook" />
                    <asp:BoundField DataField="IdBook" HeaderText="IdBook" ReadOnly="True" SortExpression="IdBook" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                    <asp:BoundField DataField="Publish" HeaderText="Publish" SortExpression="Publish" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Pages" HeaderText="Pages" SortExpression="Pages" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:CheckBoxField DataField="Sum" HeaderText="Sum" SortExpression="Sum" />
                    <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
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
        </p>
    </form>
</body>
</html>
