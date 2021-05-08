<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormSearchRFID.aspx.cs" Inherits="VKR2.WebFormSearchRFID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  
    <link rel="stylesheet" href="MyStyle.css" />
    <style> 
    form {
      /* Расположим форму по центру страницы */
      margin: 0 auto;
      width: 400px;
    }
    
    input[type=text] {
    width: 100%;
    font-size:20px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
&nbsp;<br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Поиск по IdRFID:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" AutoComplete="off" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="инфа"></asp:Label>
        </div>
    </form>
</body>
</html>
