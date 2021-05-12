using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace VKR2
{
    public partial class WebFormRequestList : System.Web.UI.Page
    {
        DashaVKREntities ent = new DashaVKREntities();

        protected void Page_Load(object sender, EventArgs e)
        {
             
        }
       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length == 10)
            {
                Int32 gg = Convert.ToInt32(TextBox1.Text);

                string name = (from u in ent.ReaderCard
                              where u.IdReaderCardRFID == gg
                              select u).First().Reader.Name.ToString();
               
                Label_name.Text = name;

                string surname = (from u in ent.ReaderCard
                               where u.IdReaderCardRFID == gg
                               select u).First().Reader.Surname.ToString();
                Label_surname.Text = surname;

                string infoBook = (from u in ent.ReaderCard
                                  where u.IdReaderCardRFID == gg
                                  select u).First().InfoBook.ToString();
                Label_infoBook.Text = infoBook;

                string infoDebt = (from u in ent.ReaderCard
                                   where u.IdReaderCardRFID == gg
                                   select u).First().InfoDebt.ToString();
                Label_infoDebt.Text = infoDebt;

                string date = (from u in ent.ReaderCard
                                   where u.IdReaderCardRFID == gg
                                   select u).First().CreatedDate.ToString();
                Label_date.Text = date;

                supertable.Visible = true;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            //в LendBook
            if (e.CommandName == "Select")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                int reader_card = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[2].Text);
                int id_book = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[3].Text);
                Response.Redirect("LendBook?ID=" + reader_card + ' ' + id_book);

                //удалить из БД, таблица RequestList
                RequestList request = ent.RequestList
                .Where(r => r.IdReaderCardRFID == reader_card)
                .FirstOrDefault();

                ent.RequestList.Remove(request);
                ent.SaveChanges();
            }
        }
    }
}