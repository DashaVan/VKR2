using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VKR2
{
    public partial class WebFormSearchRFID : System.Web.UI.Page
    {
        DashaVKREntities ent = new DashaVKREntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length == 10)
            {
                Int32 gg = Convert.ToInt32(TextBox1.Text);

                string txt = (from u in ent.Book
                              where u.IdRFIDbook == gg
                              select u).First().Pages.ToString();
                Label2.Text = txt;
            }
                         
        }
    }
}