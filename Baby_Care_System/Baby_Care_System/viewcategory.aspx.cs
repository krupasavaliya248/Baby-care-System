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
    public partial class category : System.Web.UI.Page
    {
        String s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|baby_care.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        PagedDataSource pg;
        int row, p;
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
            getcon();
        }
        public void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            getcon();
            if(e.CommandName=="cmd_cat")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("product.aspx?p=" + id);
            }
        }

        public void display()
        {
            getcon();
            da = new SqlDataAdapter("select * from Category", con);
            ds = new DataSet();
            da.Fill(ds);

            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 4;

            pg.CurrentPageIndex = Convert.ToInt16(ViewState["Id"]);

            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }
    }
}