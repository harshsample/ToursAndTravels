using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Admin
{
    public partial class WebForm42 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Request.QueryString.Get("uid").ToString();
            cn.Open();
            qry = "delete user_mstr where uid=" + uid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/dispuser.aspx");
        }
    }
}