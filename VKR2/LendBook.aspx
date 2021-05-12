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
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="centered">
            <br />
            <h2>Выдать книгу</h2> 
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="IdReaderCardRFID:"></asp:Label>
            <asp:TextBox ID="TextBox_readerCardRfid" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="IdBookRFID:"></asp:Label>
            <asp:TextBox ID="TextBox_idBook" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="IdLibrarian:"></asp:Label>
            <asp:TextBox ID="TextBox_librarian" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="button1_Click" Text="Выдать книгу" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
