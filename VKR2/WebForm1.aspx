<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="VKR2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="MyStyle.css" />
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
<body style="height: 701px">
    <form id="form1" runat="server"> 
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Имя*:" Font-Size="20px"></asp:Label>
        <asp:TextBox ID="TextName" runat="server" AutoComplete="off"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Фамилия*:" Font-Size="20px"></asp:Label>
        <asp:TextBox ID="TextSurname" runat="server" AutoComplete="off"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Отчество:" Font-Size="20px"></asp:Label>
        <asp:TextBox ID="TextPatronymic" runat="server" AutoComplete="off"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Логин*:" Font-Size="20px"></asp:Label>
        <asp:TextBox ID="TBLogin" runat="server" AutoComplete="off"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Пароль*:" Font-Size="20px"></asp:Label>
        <asp:TextBox ID="TBPassword" runat="server" AutoComplete="off"></asp:TextBox>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="158px" Height="19px">
            <asp:ListItem Value="0">Читатель</asp:ListItem>
            <asp:ListItem Value="1">Библиотекарь</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Label" Visible="False" Font-Size="20px"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Зарегистрироваться" />
        <br />
        <br />
        <div class="centered">
            <asp:Label ID="Label5" runat="server" Text="Уже есть аккаунт?" Font-Size="18px" ></asp:Label>
        </div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Вход"/>
    </form>
</body>
</html>
