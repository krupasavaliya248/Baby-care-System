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
    public partial class class_table : System.Web.UI.Page
    {
        string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        SqlCommand cmd;
        string fnm,fnmt;
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
        void imageuploaddemo()
        {
            fnm = "../Image/" + imgdem.FileName;
            imgdem.SaveAs(Server.MapPath(fnm));
        }
        void imageuploadtec()
        {
            fnmt = "../Image/" + imgtch.FileName;
            imgtch.SaveAs(Server.MapPath(fnmt));
        }
        void select()
        {
            try
            {
                id = Convert.ToInt32(Request.QueryString["idcl"]);
                ViewState["id"] = id;
                getcon();
                da = new SqlDataAdapter("select * from Classes where Id='" + ViewState["id"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                txtnm.Text = ds.Tables[0].Rows[0][2].ToString();
                txtpri.Text = ds.Tables[0].Rows[0][5].ToString();
                txtag.Text = ds.Tables[0].Rows[0][6].ToString();
                txttim.Text = ds.Tables[0].Rows[0][7].ToString();
                txtexp.Text = ds.Tables[0].Rows[0][8].ToString();
                txtcnm.Text = ds.Tables[0].Rows[0][3].ToString();

                Button1.Text = "Update";
            }
            catch (Exception e)
            {

            }
        }

        void clear()
        {
            txtnm.Text = "";
            txtag.Text = "";
            txtexp.Text = "";
            txtpri.Text = "";
            txttim.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Submit")
            {
                getcon();
                imageuploaddemo();
                imageuploadtec();
                cmd = new SqlCommand("insert into Classes(Image,Name,Cls_nm,Te_Image,Price,Age,Time,Experience) values('" + fnm + "','" + txtnm.Text + "','"+txtcnm.Text+"','"+fnmt+"','" + txtpri.Text + "','"+txtag.Text+ "','"+txttim.Text+ "','"+txtexp.Text+"')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Data Insert !..')</script>");
                clear();
            }
            else
            {
                getcon();
                cmd = new SqlCommand("update Classes set Name='" + txtnm.Text + "',Cls_nm='"+txtcnm.Text+"',Price='" + txtpri.Text + "',Age='" + txtag.Text + "',Time='" + txttim.Text + "',Experience='" + txtexp.Text + "'where Id='" + Request.QueryString["idcl"] + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Update success !..')</script>");
                Response.Redirect("table.aspx");
            }


        }
    }
}