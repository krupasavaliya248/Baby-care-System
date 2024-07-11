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
    public partial class classes : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from Classes", con);
            ds = new DataSet();
            da.Fill(ds);

            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 3;

            pg.CurrentPageIndex = Convert.ToInt16(ViewState["Id"]);

            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }

    }
}