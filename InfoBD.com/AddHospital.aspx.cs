using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InfoBD.com
{
    public partial class AddHospital : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection MyConnection2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=INFOBD;Integrated Security=True;Pooling=False");
                MyConnection2.Open();

                SqlCommand Query = new SqlCommand("insert into HospitalDatabase (Id,HospitalName,Area,PhoneNumber) values('" + this.TextBox4.Text + "','" + this.TextBox3.Text + "','" + this.TextBox1.Text + "','" + this.TextBox2.Text + "')", MyConnection2);

                Query.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successfully !!')</script>");
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

                SqlCommand Query = new SqlCommand(@"update HospitalDatabase set Id='" + this.TextBox4.Text + "',HospitalName='" + this.TextBox3.Text + "',Area='" + this.TextBox1.Text + "',PhoneNumber='" + this.TextBox2.Text + "' where (Id='" + this.TextBox4.Text + "')", MyConnection2);

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection MyConnection2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=INFOBD;Integrated Security=True;Pooling=False");
                MyConnection2.Open();

                SqlCommand Query = new SqlCommand(@"Delete from HospitalDatabase where (Id='" + this.TextBox4.Text + "')", MyConnection2);

                Query.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Delete Successfully !!')</script>");
                MyConnection2.Close();
            }
            catch (Exception ex)
            {

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string hospitalname = "", area = "" , phonenumber = "";
            int id = 0;

            string CS = @"Data Source=(LocalDB)\v11.0;Initial Catalog=INFOBD;Integrated Security=True;Pooling=False";
            SqlConnection conn = new SqlConnection(CS);
            //, Convert.ToInt32(DropDownList1.SelectedItem.ToString())
            string myquery = String.Format("SELECT * FROM HospitalDatabase WHERE Id={0}", DropDownList1.SelectedItem.ToString());

            TextBox4.Text = DropDownList1.SelectedIndex.ToString();

            try
            {
                SqlCommand cmd = new SqlCommand(myquery, conn);
                conn.Open();
                cmd.CommandText = myquery;
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {

                    id = reader.GetInt32(0);
                    hospitalname = reader.GetString(1);
                    area = reader.GetString(2);
                    phonenumber = reader.GetString(3);

                    TextBox4.Text = id.ToString();
                    TextBox1.Text = area;
                    TextBox2.Text = phonenumber;
                    TextBox3.Text = hospitalname;

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