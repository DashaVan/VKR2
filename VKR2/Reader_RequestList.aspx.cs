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
    public partial class Reader_RequestList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //DashaVKREntities ent = new DashaVKREntities();
           //GridView2.DataSource = (from book in ent.Book select book).ToList();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

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
                    LabelError.Visible = true;
                    LabelError.Text = "введите IdRFID читательского билета и книги";
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

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            //DashaVKREntities ent = new DashaVKREntities();
            if (LabelError.Visible)
                LabelError.Visible = false;
            
            if (!string.IsNullOrEmpty(TextBoxName.Text) && !string.IsNullOrWhiteSpace(TextBoxName.Text) ||
                !string.IsNullOrEmpty(TextBoxAutor.Text) && !string.IsNullOrWhiteSpace(TextBoxAutor.Text) ||
                    !string.IsNullOrEmpty(TextBoxId.Text) && !string.IsNullOrWhiteSpace(TextBoxId.Text))
            {  
                string title_book = TextBoxName.Text;
                string autor_book = TextBoxAutor.Text;
                if (Class1.searchBookTitle(title_book) == true)
                {
        
                    //TODO

                    LabelError.Visible = true;
                    LabelError.Text = "Книга найдена!";
                }
                else
                {
                    LabelError.Visible = true;
                    LabelError.Text = "Книга не найдена!";
                }   

                if (Class1.searchBookAutor(autor_book) == true)
                {
                    LabelError.Visible = true;
                    LabelError.Text = "Книга найдена!";
                }
                else
                {
                    LabelError.Visible = true;
                    LabelError.Text = "Книга не найдена!";
                }
            }
            else
            {
                LabelError.Visible = true;
                LabelError.Text = "Заполните хотя бы одно поле для поиска!";
            }
        }
    }
}