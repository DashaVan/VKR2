using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VKR2
{
    public partial class Reader_orderBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                TextBox2.Text = Request.Params["ID"].ToString();
            }

            catch
            {
                Response.Redirect("WebForm1.aspx");
            }

        }

        protected void BtnOrder_Click(object sender, EventArgs e)
        {
            if (Label3.Visible)
                Label3.Visible = false;
            if (!string.IsNullOrEmpty(TextBox1.Text) && !string.IsNullOrWhiteSpace(TextBox1.Text) &&
                !string.IsNullOrEmpty(TextBox2.Text) && !string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                DashaVKREntities ent = new DashaVKREntities();
                RequestList new_request = new RequestList();
                int i;
                if (!int.TryParse(TextBox1.Text, out i) || !int.TryParse(TextBox2.Text, out i))
                {
                    Label3.Visible = true;
                    Label3.Text = "введите IdRFID читательского билета и книги";
                    return;
                }
                else
                {
                    int readerCard = Convert.ToInt32(TextBox1.Text);
                    new_request.IdReaderCardRFID = readerCard;
                    int book = Convert.ToInt32(TextBox2.Text);
                    new_request.IdRFIDbook = book;
                    new_request.Date = System.DateTime.Now.Date;

                    ent.RequestList.Add(new_request);
                    ent.SaveChanges();
                }

            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Поля должны быть заполнены!";
            }
        }
    }
}