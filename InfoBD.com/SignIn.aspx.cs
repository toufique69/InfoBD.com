using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InfoBD.com
{
    public partial class Account : System.Web.UI.Page
    {
        string name = "", pw = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = @"Data Source=(LocalDB)\v11.0;Initial Catalog=INFOBD;Integrated Security=True;Pooling=False";
            SqlConnection conn = new SqlConnection(CS);
            string myquery = String.Format("SELECT UserName, Password FROM Login WHERE UserName LIKE '{0}'", TextBox1.Text);

            try
            {
                SqlCommand cmd = new SqlCommand(myquery, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    name = reader.GetString(0);
                    pw = reader.GetString(1);
                }
            }
            finally
            {
                conn.Close();
            }

           
            if (name == this.TextBox1.Text.ToString() && pw == this.TextBox2.Text.ToString())
            {
                Response.Redirect("Admin.aspx");
            }

            else if (name != this.TextBox1.Text.ToString() || pw != this.TextBox2.Text.ToString())
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Username or Password !!')</script>");
            }
        }
    }
}