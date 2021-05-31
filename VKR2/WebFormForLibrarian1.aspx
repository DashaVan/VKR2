<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormForLibrarian1.aspx.cs" Inherits="VKR2.WebFormForLibrarian1" %>

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
        input[type=submit] {
            width: 100%;
            font-size:20px;
            position: relative;
            left: 50%;
            transform: translate(-50%, 0);
       }
    </style> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="centered">
            <br />
            <br />
            <asp:Button ID="BtnRequestList" runat="server" OnClick="BtnRequestList_Click" Text="Каталог заказов" />
            <p>Информация о заказанных читателями книгах.  <br />
                Проверка читателей.  <br />
                Одобрение или отказ от выдачи книги читателю.</p>
            <br />
            <br />
            <asp:Button ID="BtnInfoReader" runat="server" OnClick="BtnInfoReader_Click" Text="Выдать книгу/Поиск данных о читателе" />
            <p>Фонд данных о читателях. <br /> Поиск информации о читателе.</p> 
            <br />
            <br />
            <asp:Button ID="BtnReturnBook" runat="server" Text="Добавить книгу в библиотеку" OnClick="BtnReturnBook_Click" />
            <p>Добавить или вернуть книгу в библиотеку.</p>
            <br />
            <br />
            <asp:Button ID="BtnInfoLendBook" runat="server" Text="Архив" OnClick="BtnInfoLendBook_Click" />
            <p>Информация о выданных и поступивших книгах. <br /> Фонд книг библиотеки.  <br />Поиск книг.</p>
        </div>
    </form>
</body>
</html>
