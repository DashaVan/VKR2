<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormEntry.aspx.cs" Inherits="VKR2.WebFormEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="MyStyle.css" />
    <style> 
    form {
      margin: 0 auto;
      width: 400px;
    }
    input[type=text] {
    width: 100%;
    font-size:20px;
    }
    input[type=password] {
    width: 100%;
    font-size:20px;
    }
    input[type=submit] {
    position: relative;
    left: 50%;
    transform: translate(-50%, 0);
    margin-top: 5px;
    top: 1px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Логин:" Font-Size="20px"></asp:Label>
        <asp:TextBox ID="TextBoxLogin" runat="server" AutoComplete="off"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Пароль:" Font-Size="20px"></asp:Label>
        <input id="Password1" type="password" runat="server" /><br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="0">Читатель</asp:ListItem>
            <asp:ListItem Value="1">Библиотекарь</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="LabelError" runat="server" ForeColor="Red" Text="Error" Visible="False" Font-Size="20px"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Вход" />
    </form>
</body>
</html>
