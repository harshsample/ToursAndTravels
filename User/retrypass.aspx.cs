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
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string email1;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            email1 = Request.QueryString.Get("email");
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            
            
           string newpass = txtnewpass.Text;

                    cn.Open();
                    qry = "update  user_mstr set pass='" + newpass + "' where email='" + email1  + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
              
            
        }

        
    }
}