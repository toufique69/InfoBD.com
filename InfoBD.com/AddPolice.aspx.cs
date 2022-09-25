using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InfoBD.com
{
    public partial class AddPolice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection MyConnection2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=INFOBD;Integrated Security=True;Pooling=False");
                MyConnection2.Open();

                SqlCommand Query = new SqlCommand("insert into PoliceDatabase (Id,Area,District,PhoneNumber) values('" + this.TextBox3.Text + "','" + this.TextBox1.Text + "','" + this.TextBox4.Text + "','" + this.TextBox2.Text + "')", MyConnection2);

                Query.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successfully !!')</script>");
                MyConnection2.Close();
            }
            catch (Exception ex)
            {

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection MyConnection2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=INFOBD;Integrated Security=True;Pooling=False");
                MyConnection2.Open();

                SqlCommand Query = new SqlCommand(@"Delete from PoliceDatabase where (Id='" + this.TextBox3.Text + "')", MyConnection2);

                Query.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Delete Successfully !!')</script>");
                MyConnection2.Close();
            }
            catch (Exception ex)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection MyConnection2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=INFOBD;Integrated Security=True;Pooling=False");
                MyConnection2.Open();

                SqlCommand Query = new SqlCommand(@"update PoliceDatabase set Id='" + this.TextBox3.Text + "', Area='" + this.TextBox1.Text + "',District='" + this.TextBox4.Text + "',PhoneNumber='" + this.TextBox2.Text + "' where (Id='" + this.TextBox3.Text + "')", MyConnection2);

                Query.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Update Successfully !!')</script>");
                MyConnection2.Close();
            }
            catch (Exception ex)
            {
                
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox3.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string area = "", district ="" , phonenumber = "" ;
            int id = 0;

            string CS = @"Data Source=(LocalDB)\v11.0;Initial Catalog=INFOBD;Integrated Security=True;Pooling=False";
            SqlConnection conn = new SqlConnection(CS);
            //, Convert.ToInt32(DropDownList1.SelectedItem.ToString())
            string myquery = String.Format("SELECT * FROM PoliceDatabase WHERE Id={0}", DropDownList1.SelectedItem.ToString());

            TextBox3.Text = DropDownList1.SelectedIndex.ToString();

            try
            {
                SqlCommand cmd = new SqlCommand(myquery, conn);
                conn.Open();
                cmd.CommandText = myquery;
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {

                    id = reader.GetInt32(0);
                    area = reader.GetString(1);
                    district = reader.GetString(2);
                    phonenumber = reader.GetString(3);

                    TextBox3.Text = id.ToString();
                    TextBox1.Text = area;
                    TextBox2.Text = phonenumber;
                    TextBox4.Text = district;
               
                }
            }
            catch
            {
                Response.Write("<script>alert('Sorry !!!')</script>");
            }
            finally
            {
                conn.Close();
            }
        }
        
    }
}
    