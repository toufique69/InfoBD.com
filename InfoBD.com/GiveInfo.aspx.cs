using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InfoBD.com
{
    public partial class Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection MyConnection2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=INFOBD;Integrated Security=True;Pooling=False");
                MyConnection2.Open();

                SqlCommand Query = new SqlCommand("insert into InfoTable (Name,Email,Phone,Category,Message) values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + this.DropDownList1.Text + "','" + this.TextBox4.Text + "')", MyConnection2);

                Query.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Submit Successfully !!')</script>");
                MyConnection2.Close();
            }
            catch (Exception ex)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}