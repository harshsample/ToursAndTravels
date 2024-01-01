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
   
    public partial class admin_signin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btn_admin_signin_Click(object sender, EventArgs e)
        {
            
            cn.Open();

            qry = "select * from admin_mstr where email='" + txtemail.Text + "' and pass='" + txtpass.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                Session["aid"] = dr["aid"].ToString();
                Session["email"] = dr["email"].ToString();
                txtemail.Text = dr["email"].ToString();
                txtpass.Text = dr["pass"].ToString();
                Response.Redirect("~/Admin/AHome.aspx");
            }
            else
            {
                Response.Redirect("~/Admin/admin_signin.aspx");
            }
            cn.Close();

        }
    }
}