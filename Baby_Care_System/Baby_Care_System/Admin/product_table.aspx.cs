
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
    public partial class product_table : System.Web.UI.Page
    {
        string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        SqlCommand cmd;
        string fnm;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            imageupload();
            if (!IsPostBack)
            {
                fillcombo();
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
            fnm = "../Image/" + img.FileName;
            img.SaveAs(Server.MapPath(fnm));
        }

        void fillcombo()
        {
            getcon();
            da = new SqlDataAdapter("select * from Category", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i=0;i<ds.Tables[0].Rows.Count;i++)
            {
                catlist.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Submit")
            {
                getcon();
                fillcombo();
                
                cmd = new SqlCommand("insert into Product(Pro_Cat_ID,Pro_Name,Pro_Price,Pro_Image,Pro_Description) values('" + ViewState["cid"] + "','" + txtnm.Text + "','" + txtpri.Text + "','"+fnm+"','"+txtdes.Text+"')", con);
                cmd.ExecuteNonQuery();
                
                Response.Write("<script>alert('Data Insert !..')</script>");
            }
           
            else
            {
                getcon();
                cmd = new SqlCommand("update Product set Pro_Name='" + txtnm.Text + "',Pro_Price='" + txtpri.Text + "',Pro_Description='" + txtdes.Text + "'where Pro_Id='" + Request.QueryString["id"] + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Update success !..')</script>");
                Response.Redirect("table.aspx");
            }
            txtnm.Text = "";
            txtpri.Text = "";
            txtdes.Text = "";

        }

        void select()
        {
            try
            {
                id = Convert.ToInt32(Request.QueryString["id"]);
                ViewState["id"] = id;
                getcon();
                da = new SqlDataAdapter("select * from Product where Pro_Id='" + ViewState["id"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                catlist.SelectedValue = ds.Tables[0].Rows[0][1].ToString();
                txtnm.Text = ds.Tables[0].Rows[0][2].ToString();
                txtpri.Text = ds.Tables[0].Rows[0][3].ToString();
                txtdes.Text = ds.Tables[0].Rows[0][5].ToString();

                Button1.Text = "Update";
            }
            catch (Exception e)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtnm.Text = "";
            txtpri.Text = "";
            txtdes.Text = "";
        }

        protected void catlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcon();
            imageupload();
            da = new SqlDataAdapter("select * from Category where Cat_Name='" + catlist.SelectedItem.ToString() + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            ViewState["cid"] = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        }
    }
}