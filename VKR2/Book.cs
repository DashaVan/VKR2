//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VKR2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Book
    {
        public Book()
        {
            this.LendBook = new HashSet<LendBook>();
            this.RequestList = new HashSet<RequestList>();
            this.ReturnBook = new HashSet<ReturnBook>();
        }
    
        public Nullable<int> IdRFIDbook { get; set; }
        public System.Guid IdBook { get; set; }
        public string Title { get; set; }
        public string Autor { get; set; }
        public string Publish { get; set; }
        public int Year { get; set; }
        public int Pages { get; set; }
        public System.DateTime Date { get; set; }
        public bool Sum { get; set; }
    
        public virtual ICollection<LendBook> LendBook { get; set; }
        public virtual ICollection<RequestList> RequestList { get; set; }
        public virtual ICollection<ReturnBook> ReturnBook { get; set; }
    }
}
