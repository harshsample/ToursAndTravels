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
    public partial class WebForm18 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
       
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {

            cn.Open();
            qry = "insert into tour_map values('" + ddltourmap.SelectedValue + "','" + txtmapsrc.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

        }
    }
}