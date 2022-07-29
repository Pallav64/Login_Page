using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace Login_Page
{
    public partial class login : System.Web.UI.Page
    {
        public MySqlConnection con;
        public MySqlCommand cmd,cmd_ins;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string str;
                str = "Data source=localhost;Database=Pallav;User Id=root; Password=Sonu@2764;";
                con = new MySqlConnection(str);
                con.Open();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("SignUp.aspx");
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new MySqlCommand("Select count(*) from trainee_login where User_id='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
                int cnt;
                cnt = Convert.ToInt32(cmd.ExecuteScalar());

                if (TextBox1.Text == "" && TextBox2.Text == "" )
                {
                    Response.Write("Please fill all records.");
                }


                else if (cnt>0)
                {
                    //Response.Write("id suceeded");
                    Session["id"] = TextBox1.Text;
                    Response.Redirect("page1.aspx");
                }
                else
                {
                    Response.Write("wrong id");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            
        }

       /* protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string ins;
                ins = "insert into Trainee_login values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
                cmd_ins = new MySqlCommand(ins,con);
                cmd_ins.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
            con.Close();
        }*/
    }
}