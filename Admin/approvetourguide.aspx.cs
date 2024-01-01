using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project.Admin
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
       
        string qry;
        string tgid;

        protected void Page_Load(object sender, EventArgs e)
        {

            tgid = Request.QueryString.Get("tgid");
            cn.Open();
            qry = "update tour_guides set status=1 where tgid='" + tgid + "'" ;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();


           
        }
    }
}