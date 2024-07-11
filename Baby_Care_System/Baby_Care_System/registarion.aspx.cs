using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Baby_Care_System
{
    public partial class login : System.Web.UI.Page
    {
        string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        void clear()
        {
            txtnm.Text = "";
            txtage.Text = "";
            txtem.Text = "";
            txtbnm.Text = "";
            radgen.SelectedValue = "";
            txtbir.Text = "";
            txtpass.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Button2.Text == "Submit")
            {
                getcon();

                cmd = new SqlCommand("insert into Login_info(Name,Email,B_name,B_gender,B_Birthday,B_age,Password) values('" + txtnm.Text + "','" + txtem.Text + "','"+txtbnm.Text+"','" + txtbir.Text + "','" + radgen.SelectedItem + "','" + txtage.Text + "','" + txtpass.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Data Insert !..')</script>");
                clear();
            }
        }
    }
}