using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Project.Admin
{
    public partial class admin_register : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_admin_register_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into admin_mstr values('" + txtaname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','"+ txt_mob.Text +"')";
            cmd = new SqlCommand(qry,cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}