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
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static List<Int32> allNumbers = new List<Int32>();
        private static Random random = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DashaVKREntities ent = new DashaVKREntities();

            if (Label4.Visible)
                Label4.Visible = false;

            if (!string.IsNullOrEmpty(TextName.Text) && !string.IsNullOrWhiteSpace(TextName.Text) &&
                !string.IsNullOrEmpty(TextSurname.Text) && !string.IsNullOrWhiteSpace(TextSurname.Text) &&
                !string.IsNullOrEmpty(TBLogin.Text) && !string.IsNullOrWhiteSpace(TBLogin.Text) &&
                !string.IsNullOrEmpty(TBPassword.Text) && !string.IsNullOrWhiteSpace(TBPassword.Text))
            {
                if (RadioButtonList1.SelectedItem.Value == "0")
                {
                    //reader 
                    Reader new_user = new Reader();
                    new_user.IdReader = System.Guid.NewGuid();
                    new_user.Name = TextName.Text.Trim();
                    new_user.Patronymic = TextSurname.Text.Trim();
                    new_user.Surname = TextPatronymic.Text.Trim();
                    new_user.RegistrationDate = System.DateTime.Now.Date;
                    new_user.Login = TBLogin.Text.Trim();
                    new_user.Password = TBPassword.Text.Trim();

                    ReaderCard new_readerCard = new ReaderCard();
                    new_readerCard.IdReaderCard = System.Guid.NewGuid();
                    new_readerCard.IdReader = new_user.IdReader;
                    new_readerCard.CreatedDate = System.DateTime.Now.Date;
                    new_readerCard.IdReaderCardRFID = GenerateNumber();

                    ent.Reader.Add(new_user);
                    ent.ReaderCard.Add(new_readerCard);
                    ent.SaveChanges();
                    Response.Redirect("Reader_RequestList.aspx");                  
                }
                else
                {
                    //librarian
                    Librarian new_librarian = new Librarian();
                    new_librarian.IdLibrarian = System.Guid.NewGuid();
                    new_librarian.Name = TextName.Text.Trim();
                    new_librarian.Patronymic = TextSurname.Text.Trim();
                    new_librarian.Surname = TextPatronymic.Text.Trim();
                    new_librarian.Login = TBLogin.Text.Trim();
                    new_librarian.Password = TBPassword.Text.Trim();
                    new_librarian.RegistrationDate = System.DateTime.Now.Date;
                    ent.Librarian.Add(new_librarian);
                    ent.SaveChanges();
                    Response.Redirect("WebFormForLibrarian1.aspx");
                }
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "Поля должны быть заполнены!";
            }   
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormEntry.aspx");
        }

        private static Int32 GenerateNumber()
        {
            Int32 newNumber;
            do newNumber = Convert.ToInt32(random.Next(1000000000, 2147483647));
            while (allNumbers.Contains(newNumber));

            allNumbers.Add(newNumber);
            return newNumber;
        }
    }
}