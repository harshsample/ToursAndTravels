using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.User
{
    public partial class WebForm22 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == "")
            {
                Response.Redirect("~/User/user_signup.aspx");
            }

            Label1.Text = Session["uname"].ToString();
        }
    }
}