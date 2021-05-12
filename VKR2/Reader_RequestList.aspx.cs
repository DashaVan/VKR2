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
        DashaVKREntities ent = new DashaVKREntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (LabelError.Visible == true)
                LabelError.Visible = false;

            GridView3.DataSource = (from book in ent.Book select book).ToList();
            GridView3.DataBind();
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(TextBoxName.Text) && !string.IsNullOrWhiteSpace(TextBoxName.Text))
            {
                string title = TextBoxName.Text.Trim();

                GridView3.DataSource = (from c in ent.Book
                                        where c.Title.Contains(title)
                                        select c).ToList();
                GridView3.DataBind();
            }
            else
            {
                if (!string.IsNullOrEmpty(TextBoxAutor.Text) && !string.IsNullOrWhiteSpace(TextBoxAutor.Text))
                {
                    string autor = TextBoxAutor.Text.Trim();

                    GridView3.DataSource = (from c in ent.Book
                                            where c.Autor.Contains(autor)
                                            select c).ToList();
                    GridView3.DataBind();
                }
                else
                {
                    if (!string.IsNullOrEmpty(TextBoxId.Text) && !string.IsNullOrWhiteSpace(TextBoxId.Text))
                    {
                        int bookId = Convert.ToInt32(TextBoxAutor.Text.Trim());

                        GridView3.DataSource = (from c in ent.Book
                                                where ((c.IdRFIDbook == bookId))
                                                select c).ToList();
                        GridView3.DataBind();
                    }
                    else
                    {
                        LabelError.Visible = true;
                        LabelError.Text = "Книга не найдена";
                    }
                }
            }   
        }
   
        protected void TextBoxName_TextChanged(object sender, EventArgs e)
        {
            /*string title = TextBoxName.Text.Trim();

            GridView3.DataSource = (from c in ent.Book
                                    where c.Title.Contains(title)
                                    select c).ToList();
            GridView3.DataBind();*/
        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow row = GridView3.SelectedRow;

            if (e.CommandName == "Select")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                int bigStore = Convert.ToInt32(GridView3.Rows[rowIndex].Cells[1].Text);
                Response.Redirect("Reader_orderBook.aspx?ID="+bigStore);  
            }
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}