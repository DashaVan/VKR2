using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VKR2
{
    public partial class FormReaderData : System.Web.UI.Page
    {
        DashaVKREntities ent = new DashaVKREntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LendBook?ID=" + 0000000000 + ' ' + 00000000000);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length == 10)
            {
                Int32 gg = Convert.ToInt32(TextBox1.Text);

                string id_reader = (from u in ent.ReaderCard
                                    where u.IdReaderCardRFID == gg
                                    select u).First().IdReader.ToString();
                Label_id.Text = id_reader;

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

                Table_reader.Visible = true;
            }
        }
    }
}