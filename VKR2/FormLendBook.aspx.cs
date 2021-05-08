using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VKR2
{
    public partial class FormLendBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLend_Click(object sender, EventArgs e)
        {
            GridViewBook.Visible = false;
            GridViewLend.Visible = true;
            GridViewReturn.Visible = false;
            
        }

        protected void BtnReturn_Click(object sender, EventArgs e)
        {
            GridViewBook.Visible = false;
            GridViewLend.Visible = false;
            GridViewReturn.Visible = true;
        }

        protected void BtnFund_Click(object sender, EventArgs e)
        {
            GridViewReturn.Visible = false;     
            GridViewLend.Visible = false;
            GridViewBook.Visible = true;

        }
    }
}