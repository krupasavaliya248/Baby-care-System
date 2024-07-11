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
    public partial class cart1 : System.Web.UI.Page
    {
        String s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if(Session["name"]==null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                fillgrid();
                if (!IsPostBack)
                {
                    selectid();
                }
            }
        }
        public void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void selectid()
        {
            String nm = Session["name"].ToString();
            getcon();
            da = new SqlDataAdapter("select * from Login_info where Name='" + nm + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            int id =Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            ViewState["id"] = id;
            
        }

        public DataSet select()
        {
            getcon();
            selectid();
            da = new SqlDataAdapter("select * from Addto_cart where User_Id='" + ViewState["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
            
        }

        public void fillgrid()
        {
            getcon();
            GridView1.DataSource = select();
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            select();
            if (e.CommandName == "cmd_remove")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["cid"] = id;
                cmd = new SqlCommand("delete from Addto_cart where Cart_Id='" + ViewState["cid"] + "'", con);
                cmd.ExecuteNonQuery();
            }
        }
    }
}