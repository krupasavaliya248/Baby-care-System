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
    public partial class product : System.Web.UI.Page
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

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        public void display()
        {
            getcon();
            da = new SqlDataAdapter("select * from Product where Pro_Cat_ID='"+Request.QueryString["p"]+"'", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            getcon();
            if(e.CommandName=="cmd_view")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("view_details.aspx?q="+id);
            }
        }
    }
}