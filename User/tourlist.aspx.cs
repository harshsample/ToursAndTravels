using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.User
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string tdid;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();

            qry = "select * from tourdetails";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                Session["tdid"] = dr["tdid"].ToString();

            }
            cn.Close();
        }
    }
}