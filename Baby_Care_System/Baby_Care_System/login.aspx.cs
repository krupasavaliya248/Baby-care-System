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
    public partial class login1 : System.Web.UI.Page
    {
        string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        SqlCommand cmd;
        SqlDataReader dr;
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
            getcon();
            try
            {
                String nm = txtnm.Text;
                String pwd = txtpass.Text;
                cmd = new SqlCommand("Select * from Login_info where Name='" + nm + "'and Password='" + pwd + "'", con);

                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["name"] = nm;
                    Response.Redirect("index.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Username And password is worng!..')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}