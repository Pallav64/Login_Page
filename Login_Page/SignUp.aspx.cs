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
    public partial class SignUp : System.Web.UI.Page
    {
        public MySqlConnection con;
        public MySqlCommand cmd, cmd_ins;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string str;
                str = "Data source=localhost;Database=Pallav;User Id=root; Password=12345678;";
                con = new MySqlConnection(str);
                con.Open();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new MySqlCommand("Select count(*) from trainee_login where User_id='" + TextBox1.Text + "'", con);
                int cnt;
                cnt = Convert.ToInt32(cmd.ExecuteScalar());

                if(cnt > 0)
                {
                    Response.Write("User id already registered");
                }

                else
                {
                    string ins;
                    ins = "insert into Trainee_login values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
                    cmd_ins = new MySqlCommand(ins, con);
                    cmd_ins.ExecuteNonQuery();
                    Response.Write("Account created succesfully");
                    Response.Redirect("login.aspx");
                }
               
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            con.Close();
        }
    }
}
