using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VKR2
{
    public class Class1
    {
        public static bool checkReader (string login, string password)
            {
            DashaVKREntities ent = new DashaVKREntities();

            int result = (from u in ent.Reader
                          where ((u.Login == login) && (u.Password == password))
                          select u).Count();

            if (result == 1)
                return true;
            else
                return false;
        }

        public static bool checkLibrarian(string login, string password)
        {
            DashaVKREntities ent = new DashaVKREntities();

            int result = (from u in ent.Librarian
                          where ((u.Login == login) && (u.Password == password))
                          select u).Count();

            if (result == 1)
                return true;
            else
                return false;
        }

        public static bool searchBookTitle(string title)
        {
            DashaVKREntities ent = new DashaVKREntities();

            int result = (from u in ent.Book
                          where ((u.Title == title))
                          select u).Count();

            if (result == 1)
                return true;
            else
                return false;
        }

        public static bool searchBookAutor(string autor)
        {
            DashaVKREntities ent = new DashaVKREntities();

            int result = (from u in ent.Book
                          where ((u.Autor == autor))
                          select u).Count();

            if (result == 1)
                return true;
            else
                return false;
        }
    }
}