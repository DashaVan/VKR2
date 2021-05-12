using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VKR2
{
    public partial class WebFormEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DashaVKREntities ent = new DashaVKREntities(); 

            if (!string.IsNullOrEmpty(TextBoxLogin.Text) && !string.IsNullOrWhiteSpace(TextBoxLogin.Text) &&
                !string.IsNullOrEmpty(Password1.Value) && !string.IsNullOrWhiteSpace(Password1.Value))
            {
                
                if (RadioButtonList1.SelectedItem.Value == "0")
                {
                    //reader 
                    string login_user = TextBoxLogin.Text;
                    string password_user = Password1.Value;
                    if (Class1.checkReader(login_user, password_user) == true)
                    {
                        Response.Redirect("Reader_RequestList.aspx");
                    }
                    else
                    {
                        LabelError.Visible = true;
                        LabelError.Text = "Неправильные логин и пароль!";
                    }
                }
                else
                {
                    //librarian
                    string login_librarian = TextBoxLogin.Text;
                    string password_librarian = Password1.Value;
                    if (Class1.checkLibrarian(login_librarian, password_librarian) == true)
                    {
                        Response.Redirect("WebFormForLibrarian1.aspx");
                    }
                    else
                    {
                        LabelError.Visible = true;
                        LabelError.Text = "Неправильные логин и пароль!";
                    }
                }
            }
            else
            {
                LabelError.Visible = true;
                LabelError.Text = "Поля должны быть заполнены!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }   
}