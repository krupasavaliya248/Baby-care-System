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
    public partial class profile : System.Web.UI.Page
    {
        string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        SqlCommand cmd;
        SqlDataReader dr;
        String name;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

            if (Session["nm"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    select();
                }
            }
           
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void select()
        {
            try
            {
                name = Session["nm"].ToString();
                ViewState["nm"] = name;
                getcon();
                da = new SqlDataAdapter("select * from Admin_login where Name='" + ViewState["nm"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                txtnm.Text = ds.Tables[0].Rows[0][1].ToString();
                txtem.Text = ds.Tables[0].Rows[0][2].ToString();
                txtpss.Text = ds.Tables[0].Rows[0][3].ToString();
                txtpn.Text = ds.Tables[0].Rows[0][4].ToString();
                txtms.Text = ds.Tables[0].Rows[0][5].ToString();
                int id = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
                labnm.Text = ds.Tables[0].Rows[0][1].ToString();
                labmss.Text= ds.Tables[0].Rows[0][5].ToString();
                Image1.ImageUrl= ds.Tables[0].Rows[0][6].ToString();
                ViewState["id"] = id;
            }
            catch (Exception e)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            getcon();
            Response.Redirect("admin_login_table.aspx?idad=" + ViewState["id"]);
        }
    }
}