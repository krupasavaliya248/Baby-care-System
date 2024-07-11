using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Baby_Care_System
{
    public partial class cart : System.Web.UI.Page
    {
        String s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int id;
        int fpri;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            
            if(Session["name"]==null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
               
                if (!IsPostBack)
                { 
                    select();
                    selectu();
                    
                }
            }

        }
        void finalprice()
        {
            int que = Convert.ToInt32(dpque.SelectedItem.Text.ToString());
            int pri = Convert.ToInt32(txtpri.Text.ToString());
            txtfpri.Text = (que*pri).ToString();
        }
        public void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        public void select()
        {
       
            getcon();
            da = new SqlDataAdapter("select * from Product where Pro_Id='" + Request.QueryString["vid"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            txtpid.Text = ds.Tables[0].Rows[0][0].ToString();
            txtpcid.Text = ds.Tables[0].Rows[0][1].ToString();
            txtpnm.Text = ds.Tables[0].Rows[0][2].ToString();
            txtpri.Text = ds.Tables[0].Rows[0][3].ToString();

           
        }
        void selectu()
        {
            String nm = Session["name"].ToString();
            getcon();
            da = new SqlDataAdapter("select * from Login_info where Name='" + nm + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            txtid.Text = ds.Tables[0].Rows[0][0].ToString();
            txtem.Text = ds.Tables[0].Rows[0][2].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            finalprice();
            cmd = new SqlCommand("insert into Addto_cart(User_Id,User_Email,Pro_Id,Pro_Cat_Id,Pro_Name,Pro_Price,Quantity,Final_Price) values('" + txtid.Text + "','" + txtem.Text + "','" + txtpid.Text + "','" + txtpcid.Text + "','" + txtpnm.Text + "','"+txtpri.Text+"','" + dpque.SelectedValue + "','"+txtfpri.Text+"')", con);
            cmd.ExecuteNonQuery();

            //Response.Write("<script>alert('Data Insert !..')</script>");
            Response.Redirect("viewcategory.aspx");
        }

        protected void dpque_SelectedIndexChanged(object sender, EventArgs e)
        {
            finalprice();
        }
    }
}