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
    public partial class contact : System.Web.UI.Page
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

        void clear()
        {
            txtnm.Text = "";
            txtem.Text = "";
            txtsub.Text = "";
            txtmess.Text = "";
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
                getcon();
               
                cmd = new SqlCommand("insert into Contact(Name,Email,Subject,Message) values('" + txtnm.Text + "','" + txtem.Text + "','" + txtsub.Text + "','" + txtmess.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Send Message !..')</script>");
                clear();
          

        }
    }
}