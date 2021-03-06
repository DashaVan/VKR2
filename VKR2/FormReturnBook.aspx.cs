using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VKR2
{
    public partial class FormReturnBook : System.Web.UI.Page
    {
        DashaVKREntities ent = new DashaVKREntities();
        protected void Page_Load(object sender, EventArgs e)
        {          
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(TbTitle.Text) && !string.IsNullOrWhiteSpace(TbTitle.Text) &&
                !string.IsNullOrEmpty(TbAutor.Text) && !string.IsNullOrWhiteSpace(TbAutor.Text) &&
                !string.IsNullOrEmpty(TbPublish.Text) && !string.IsNullOrWhiteSpace(TbPublish.Text) &&
                !string.IsNullOrEmpty(TbYear.Text) && !string.IsNullOrWhiteSpace(TbYear.Text) &&
                !string.IsNullOrEmpty(TbPages.Text) && !string.IsNullOrWhiteSpace(TbPages.Text))
            {
                    Book new_book = new Book();
                    new_book.IdBook = System.Guid.NewGuid();
                    new_book.Title = TbTitle.Text.Trim();
                    new_book.Autor = TbAutor.Text.Trim();
                    new_book.Publish = TbPublish.Text.Trim();

                int i;
                if (!int.TryParse(TbYear.Text, out i) || !int.TryParse(TbPages.Text, out i) || !int.TryParse(TextBoxRFID.Text, out i))
                {
                    LabelError.Visible = true;
                    LabelError.Text = "введите в поля: год и количество страниц - числа";
                    return;
                }
                else
                {
                    int year = Convert.ToInt32(TbYear.Text);
                    new_book.Year = year;
                    int pages = Convert.ToInt32(TbPages.Text);
                    new_book.Pages = pages;
                    int rfid = Convert.ToInt32(TextBoxRFID.Text);
                    new_book.IdRFIDbook = rfid;
                }             
                    new_book.Date = System.DateTime.Now.Date;
                    new_book.Sum = true;
                    new_book.Place = TbPlace.Text.Trim();
                    ent.Book.Add(new_book);
                    ent.SaveChanges();
            }
            else
            {
                LabelError.Visible = true;
                LabelError.Text = "Поля должны быть заполнены!";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ReturnBook book = new ReturnBook();
            int rfid = Convert.ToInt32(TextBoxRFID.Text);
            book.IdRFIDbook = rfid;
            int reader = Convert.ToInt32(TextBoxReader.Text);
            book.IdReaderCardRFID = reader;
            int librarian = Convert.ToInt32(TextBoxLibrarian.Text);
            book.Date = System.DateTime.Now.Date;

            var sum = ent.Book
                .Where(c => c.IdRFIDbook == rfid)
                .FirstOrDefault();
            sum.Sum = true;

            ent.ReturnBook.Add(book);
            ent.SaveChanges();
        }
    }
}