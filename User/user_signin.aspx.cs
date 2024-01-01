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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_user_signin_Click(object sender, EventArgs e)
        {
            cn.Open();

            qry = "select * from user_mstr where email='" + txtemail.Text + "' and pass='" + txtpass.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                Session["uname"] = dr["uname"];
                Session["email"] = txtemail.Text;
                Session["mob"] = dr["mob"];         
                Session["uid"] = dr["uid"];

                int verify = Convert.ToInt32(dr["verify"]);

                if (verify == 0)
                {
                    Response.Redirect("~/User/verifyOtp.aspx");
                }
                else
                {
                    Response.Redirect("~/User/UHome.aspx");
                }

            }
            cn.Close();

            
            btn_user_signin.Visible= false;
            
        }

        protected void txtemail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}