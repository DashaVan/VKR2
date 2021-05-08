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
    public partial class WebFormRequestList : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        
       
            
        }

       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       /* private void LoadData()
        {

            SqlConnection myConnection = new SqlConnection(@"Data Source=LAPTOP-28FUF4AQ;
Initial Catalog=DBLibrary;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");


            myConnection.Open();

            string query = "SELECT * FROM RequestList ORDER BY IdRequestList";

            SqlCommand command = new SqlCommand(query, myConnection);

            SqlDataReader reader = command.ExecuteReader();

            List<string[]> data = new List<string[]>();

            while (reader.Read())
            {
                data.Add(new string[3]);

                data[data.Count - 1][0] = reader[0].ToString();
                data[data.Count - 1][1] = reader[1].ToString();
                data[data.Count - 1][2] = reader[2].ToString();
            }

            reader.Close();

            myConnection.Close();

           // foreach (string[] s in data)
                //GridView1.Rows.Add(s);
        }*/
    }
}