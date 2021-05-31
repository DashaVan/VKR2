<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LendBook.aspx.cs" Inherits="VKR2.LendBook1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="MyStyle.css" />
    <title></title>
    <style>
        form {
            margin: 0 auto;
            width: 500px;
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
            <br />
            <h2>Выдать книгу</h2> 
        </div>
        <div>
            <asp:Table ID="Table1" runat="server" Width="500px" CellPadding="5" HorizontalAlign="Center">
                
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="IdReaderCardRFID:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TextBox_readerCardRfid" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="IdBookRFID:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox_idBook" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="IdLibrarian:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TextBox_librarian" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>     
            </asp:Table>         
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="button1_Click" Text="Выдать книгу" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
