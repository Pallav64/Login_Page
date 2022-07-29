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

    public partial class page1 : System.Web.UI.Page
    {
        public MySqlConnection con;
        public MySqlCommand cmd, cmd_ins;
        string id;
        string f1, f2, f3, f4, f5,date;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            id = Session["id"].ToString();
            Response.Write("Trainee Id - " + id);

            try
            {
                string str;
                str = "Data source=localhost;Database=Pallav;User Id=root; Password=Sonu@2764;";
                con = new MySqlConnection(str);
               
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
                date= DateTime.Now.ToString();
                
                if(RadioButton1.Checked)
                {
                    f1 = "Agree";
                }
                else if (RadioButton2.Checked)
                {
                    f1 = "Neutral";
                }
                else if (RadioButton3.Checked)
                {
                    f1 = "Disagree";
                }
                if (RadioButton4.Checked)
                {
                    f2 = "Agree";
                }
                else if (RadioButton5.Checked)
                {
                    f2 = "Neutral";
                }
                else if (RadioButton6.Checked)
                {
                    f2 = "Disagree";
                }
                if (RadioButton7.Checked)
                {
                    f3 = "Agree";
                }
                else if (RadioButton8.Checked)
                {
                    f3 = "Neutral";
                }
                else if (RadioButton9.Checked)
                {
                    f3 = "Disagree";
                }
                if (RadioButton10.Checked)
                {
                    f4 = "Agree";
                }
                else if (RadioButton11.Checked)
                {
                    f4 = "Neutral";
                }
                else if (RadioButton12.Checked)
                {
                    f4 = "Disagree";
                }
                if (RadioButton13.Checked)
                {
                    f5 = "Agree";
                }
                else if (RadioButton14.Checked)
                {
                    f5 = "Neutral";
                }
                else if (RadioButton15.Checked)
                {
                    f5 = "Disagree";
                }
                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
                {
                    Response.Write("Please fill all records.");
                }
                else if(RadioButton1.Checked==false && RadioButton2.Checked == false && RadioButton3.Checked == false || RadioButton4.Checked == false && RadioButton5.Checked == false && RadioButton6.Checked == false || RadioButton7.Checked == false && RadioButton8.Checked == false && RadioButton9.Checked == false || RadioButton10.Checked == false && RadioButton11.Checked == false && RadioButton12.Checked == false || RadioButton13.Checked == false && RadioButton14.Checked == false && RadioButton15.Checked == false)
                {
                    Response.Write("Please fill all records.");
                }
                else
                {

                    con.Open();
                    string ins;
                    ins = "insert into trainee_feedback values('" + id + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox1.Text + "','" + f1 + "','" + f2 + "','" + f3 + "','" + f4 + "','" + f5 + "','" + TextBox3.Text + "','" + date + "')";
                    cmd_ins = new MySqlCommand(ins, con);
                    cmd_ins.ExecuteNonQuery();
                    
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