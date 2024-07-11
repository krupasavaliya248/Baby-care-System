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
    public partial class table : System.Web.UI.Page
    {
        string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        DataSet ds;
        SqlDataAdapter da;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
            fillgridrg();
            fillgridcl();
            fillgridus();
            fillgricon();
            fillgridcat();
            fillgridac();
        }
        void getcon()
        {
            con =new  SqlConnection(s);
            con.Open();
        }
        public DataSet select()
        {
            getcon();
            da = new SqlDataAdapter("select * from Product", con);
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName=="cmd_edt")
            {
                getcon();
                select();
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                Response.Redirect("product_table.aspx?id=" + id);

            }
            else if (e.CommandName == "cmd_det")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Product where Pro_Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //Admin Login Details

        public DataSet selectrg()
        {
            getcon();
            da = new SqlDataAdapter("select * from Admin_login", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void fillgridrg()
        {
            getcon();
            GridView3.DataSource = selectrg();
            GridView3.DataBind();

        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                getcon();
                selectrg();
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                Response.Redirect("admin_login_table.aspx?idad=" + id);

            }
            else if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Admin_login where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
            }

        }

        //Class Table

        public DataSet selectcl()
        {
            getcon();
            da = new SqlDataAdapter("select * from Classes", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void fillgridcl()
        {
            getcon();
            GridView4.DataSource = selectcl();
            GridView4.DataBind();

        }
        protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                getcon();
                selectcl();
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                Response.Redirect("class_table.aspx?idcl=" + id);

            }
            else if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Classes where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        //user login 

        public DataSet selectus()
        {
            getcon();
            da = new SqlDataAdapter("select * from Login_info", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void fillgridus()
        {
            getcon();
            GridView2.DataSource = selectus();
            GridView2.DataBind();

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Login_info where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
            }

        }

        //contact table

        public DataSet selectcon()
        {
            getcon();
            da = new SqlDataAdapter("select * from Contact", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void fillgricon()
        {
            getcon();
            GridView5.DataSource = selectcon();
            GridView5.DataBind();

        }

        protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Contact where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
            }

        }

        //category table

        public DataSet selectcat()
        {
            getcon();
            da = new SqlDataAdapter("select * from Category", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void fillgridcat()
        {
            getcon();
            GridView6.DataSource = selectcat();
            GridView6.DataBind();

        }
        protected void GridView6_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Category where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
            }

        }

        //Add to cart Table

        public DataSet selectac()
        {
            getcon();
            da = new SqlDataAdapter("select * from Addto_cart", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void fillgridac()
        {
            getcon();
            GridView7.DataSource = selectac();
            GridView7.DataBind();

        }
        protected void GridView7_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Addto_cart where Cart_Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
            }


        }
    }
}