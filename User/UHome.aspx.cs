using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.User
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if( Session["email"] != null)
            {
                Label1.Text = Session["email"].ToString();
              
            }
            else
            {
                Session["email"] = "";
            }
            
            

        }
    }
}