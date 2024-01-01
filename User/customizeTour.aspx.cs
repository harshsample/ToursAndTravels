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
    public partial class WebForm21 : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == "")
            {
                Response.Redirect("~/User/user_signup.aspx");
            }
            Label1.Text = Session["uid"].ToString();
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into customize_tour values('" + txtunsername.Text + "','" + txttourname.Text + "','" + ddlparent.SelectedValue + "','" + ddlchild.SelectedValue + "','" + txtdate.Text + "','" + txtenddate.Text + "','" + txtday.Text + "','" + '0' +  "','" + "null" +  "','" + '0' + "','" + '0' + "','" + Session["uid"].ToString() + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            
        }
    }
}