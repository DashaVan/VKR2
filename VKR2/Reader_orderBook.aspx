<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reader_orderBook.aspx.cs" Inherits="VKR2.Reader_orderBook" %>

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
            <h2>Составить запрос на книгу</h2>
            
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
                       <asp:TextBox ID="TextBox2" runat="server"  Width="300px" AutoComplete="off"></asp:TextBox>
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
            
        </div>
    </form>
</body>
</html>
