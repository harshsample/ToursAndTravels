using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project.User
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string tdid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_rating_Click(object sender, EventArgs e)
        {
            tdid = Request.QueryString.Get("tdid");
            cn.Open();
            qry = "insert into user_rating values('" + txtname.Text + "','" + txtdescription.Text + "','" + Rating1.CurrentRating.ToString() + "','" + tdid + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();  
            cn.Close();
        }
    }
}