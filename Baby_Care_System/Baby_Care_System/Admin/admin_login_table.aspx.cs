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
    public partial class admin_login_table : System.Web.UI.Page
    {
        string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        SqlCommand cmd;
        String fnm;
        int id;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
           
            if (!IsPostBack)
            {
                select();
            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void imageupload()
        {
            fnm = "Image/" + img.FileName;
            img.SaveAs(Server.MapPath(fnm));
        }

        void select()
        {
            try
            {
                id = Convert.ToInt32(Request.QueryString["idad"]);
                ViewState["id"] = id;
                getcon();
                da = new SqlDataAdapter("select * from Admin_login where Id='" + ViewState["id"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                txtnm.Text = ds.Tables[0].Rows[0][1].ToString();
                txtem.Text = ds.Tables[0].Rows[0][2].ToString();
                txtpss.Text = ds.Tables[0].Rows[0][3].ToString();
                txtpn.Text = ds.Tables[0].Rows[0][4].ToString();
                txtms.Text = ds.Tables[0].Rows[0][5].ToString();

                Button1.Text = "Update";
            }
            catch(Exception e)
            {

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Submit")
            {
                getcon();
                imageupload();
                cmd = new SqlCommand("insert into Admin_login(Name,Email,Password,Phone,Message,Country,Image) values('" + txtnm.Text + "','" + txtem.Text + "','" + txtpss.Text + "','" + txtpn.Text + "','" + txtms.Text + "','" + fnm + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Data Insert !..')</script>");
            }
            else 
            {
                getcon();
                cmd = new SqlCommand("update Admin_login set Name='" + txtnm.Text + "',Email='" + txtem.Text + "',Password='"+txtpss.Text+"',Phone='"+txtpn.Text+ "',Message='"+txtms.Text+"'where Id='" + Request.QueryString["idad"] + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Update success !..')</script>");
                Response.Redirect("table.aspx");
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtnm.Text = "";
            txtem.Text="";
            txtpss.Text = "";
            txtpn.Text = "";
            txtms.Text = "";

        }
    }
}