using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VKR2
{
    public partial class WebFormForLibrarian1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void BtnRequestList_Click(object sender, EventArgs e)
        {
            //открываем каталог заказов читателей
            Response.Redirect("WebFormRequestList.aspx");
          

            //сделать потом из этой открытой формы (каталог заказов) открытие карты поиска данных о читателе + формуляр + фонд книг

        }

        protected void BtnInfoReader_Click(object sender, EventArgs e)
        {
            //открываем карту поиска данных о читателе
            Response.Redirect("FormReaderData.aspx");
           
        }

        protected void BtnReturnBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormReturnBook.aspx");
            
        }

        protected void BtnInfoLendBook_Click(object sender, EventArgs e)
        {
            //архив
            Response.Redirect("Archive.aspx");

        }
    }
}