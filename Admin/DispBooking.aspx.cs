using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project.Admin
{
    public partial class WebForm46 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        DataSet ds = new DataSet();
        SqlDataAdapter dap = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            ds.Clear();
            qry = "SELECT book_mstr.bid, book_mstr.uname, book_mstr.mob, book_mstr.email, book_mstr.country, book_mstr.state, book_mstr.city, book_mstr.date, book_mstr.parent, book_mstr.child, book_mstr.ptotal, book_mstr.ctotal, book_mstr.totalprice, book_mstr.tdid, book_mstr.status, tourdetails.placename FROM book_mstr INNER JOIN tourdetails ON book_mstr.tdid = tourdetails.tdid";
            dap = new SqlDataAdapter(qry, cn);
            dap.Fill(ds);
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();
            cn.Close();
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            cn.Open();
            ds.Clear();
            qry = "SELECT book_mstr.bid, book_mstr.uname, book_mstr.mob, book_mstr.email, book_mstr.country, book_mstr.state, book_mstr.city, book_mstr.date, book_mstr.parent, book_mstr.child, book_mstr.ptotal, book_mstr.ctotal, book_mstr.totalprice, book_mstr.tdid, book_mstr.status, tourdetails.placename FROM book_mstr INNER JOIN tourdetails ON book_mstr.tdid = tourdetails.tdid where date='"  + txtsearch.Text + "'";
            dap = new SqlDataAdapter(qry, cn);
            dap.Fill(ds);
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();
            cn.Close();
        }
    }
}