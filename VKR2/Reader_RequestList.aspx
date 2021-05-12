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
        input[type=submit] {
            position: relative;
            left: 50%;
            transform: translate(-50%, 0);
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  
        <div class="centered">  
            <br /> 
            <h2>Найти книгу:</h2>   
        </div>
        <div>
            
            <asp:Table ID="Table2" runat="server" Width="600px" CellPadding="5" HorizontalAlign="Center">
                <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label8" runat="server" Text="По названию:" Font-Size="20px"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="TextBoxName" runat="server" Width="300px" OnTextChanged="TextBoxName_TextChanged" AutoComplete="off"></asp:TextBox>                              
                            </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="По автору:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TextBoxAutor" runat="server" Width="300px" AutoComplete="off"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label10" runat="server" Text="По RFID книги:" Font-Size="20px"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:TextBox ID="TextBoxId" runat="server" Width="300px" AutoComplete="off"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Label ID="LabelError" runat="server" Font-Size="20px" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            <br />
            
            <asp:Button ID="BtnSearch" runat="server" Text="Найти" OnClick="BtnSearch_Click" />
            <br />
        </div>
        <div>
            <br />
            <br />

            <asp:Label ID="Label6" runat="server" Font-Size="20px" Text="Каталог книг:"></asp:Label>

            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

   
            <asp:GridView ID="GridView3" runat="server" OnRowCommand="GridView3_RowCommand" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Заказать книгу"/>
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
                                 <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=DashaVKREntities" DefaultContainerName="DashaVKREntities" EnableFlattening="False" EntitySetName="Book" Select="it.[IdRFIDbook], it.[Title], it.[Autor], it.[Publish], it.[Year], it.[Pages], it.[Date], it.[Sum]">
                    </asp:EntityDataSource>
                                 </ContentTemplate>
            </asp:UpdatePanel>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DashaVKREntities" DefaultContainerName="DashaVKREntities" EnableFlattening="False" EntitySetName="Book">
            </asp:EntityDataSource>
            
        </div>
    </form>
</body>
</html>
