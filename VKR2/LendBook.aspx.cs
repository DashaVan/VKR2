using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VKR2
{
    public partial class LendBook1 : System.Web.UI.Page
    {
        DashaVKREntities ent = new DashaVKREntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string param = Request.Params["ID"].ToString();
                string[] id = param.Split(' ');
                TextBox_readerCardRfid.Text = id[0];
                TextBox_idBook.Text = id[1];
            }

            catch
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            LendBook book = new LendBook();
            int readerCard = Convert.ToInt32(TextBox_readerCardRfid.Text);
            book.IdReaderCardRFID = readerCard;
            int idBook = Convert.ToInt32(TextBox_idBook.Text);
            book.IdRFIDbook = idBook;
            int librarian = Convert.ToInt32(TextBox_librarian.Text);
            book.IdLibrarianRFID = librarian;
            book.Date = System.DateTime.Now.Date;

            // Внести изменения в фонде книг
            var sum = ent.Book
                .Where(c => c.IdRFIDbook == idBook)
                .FirstOrDefault();
            sum.Sum = false;

            //Добавить информацию о выданной книге в читательский билет
            var infoBook = ent.ReaderCard
                .Where(d => d.IdReaderCardRFID == readerCard)
                .FirstOrDefault();
            infoBook.InfoBook = "книга: {idBook}";
  
            ent.LendBook.Add(book);
            ent.SaveChanges();
            Response.Redirect("WebFormForLibrarian1");
        }

        
    }
}