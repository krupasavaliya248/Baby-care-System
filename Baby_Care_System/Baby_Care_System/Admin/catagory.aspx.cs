using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Baby_Care_System.Admin
{
    public partial class contact_table : System.Web.UI.Page
    {
        string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        SqlCommand cmd;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void imageupload()
        {
            fnm = "../Image/" + img.FileName;
            img.SaveAs(Server.MapPath(fnm));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Submit")
            {
                getcon();
                imageupload();
                cmd = new SqlCommand("insert into Category(Cat_Name,Cat_Image) values('" + txtnm.Text + "','" + fnm + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Insert !..')</script>");
            }

        }
    }
}