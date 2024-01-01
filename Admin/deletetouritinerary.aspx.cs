using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Admin
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string tiid;
        protected void Page_Load(object sender, EventArgs e)
        {
            tiid = Request.QueryString.Get("tiid").ToString();
            cn.Open();
            qry = "delete tour_itinerary where tiid=" + tiid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/disptouritinerary.aspx");
        }
    }
}