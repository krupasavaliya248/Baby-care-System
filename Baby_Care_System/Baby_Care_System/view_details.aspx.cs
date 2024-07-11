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
    public partial class view_details : System.Web.UI.Page
    {
        String s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            display();
        }
        public void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        public void display()
        {
            getcon();
            da = new SqlDataAdapter("select * from Product where Pro_Id='" + Request.QueryString["q"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            getcon();
            if (e.CommandName == "cmd_cart")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("addcart.aspx?vid=" + id);
            }
        }
    }
}