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
    public partial class Admin : System.Web.UI.Page
    {
        public MySqlConnection con;
        public MySqlCommand cmd, cmd1;
        public MySqlDataAdapter et, er;

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                    con = new MySqlConnection("Server=localhost;database=pallav; user id=root;password=12345678;");

                
            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "0000")
            {
                //con = new MySqlConnection("Server=localhost;database=pallav; user id=root;password=12345678;");
                con.Open();
                cmd1 = new MySqlCommand("select * from trainee_feedback", con);
                cmd1.ExecuteNonQuery();
                DataTable dt = new DataTable();
                et = new MySqlDataAdapter(cmd1);
                et.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }

            else
            {
                Response.Write("Wrong code insert again");
            }

        }
       
    }
}
