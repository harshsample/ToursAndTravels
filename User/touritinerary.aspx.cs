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
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string fname;
        int uid;
        int verify;
        string tdid;
        protected void Page_Load(object sender, EventArgs e)
        {

            //Label2.Text = Session["tdid"].ToString();
        }

        protected void btn_book_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/User/booknow.aspx");


            //Response.Redirect("~/User/booknow.aspx");

            //if (Session["email"] == "")
            //{
            //    Response.Redirect("~/User/user_signup.aspx");
            //}
            //else
            //{
            //    Response.Redirect("~/User/booknow.aspx");
            //}
            //try
            //{
            //    cn.Open();
            //    qry = "select * from user_mstr where uid=" + uid;
            //    cmd = new SqlCommand(qry, cn);
            //    dr = cmd.ExecuteReader();

            //    if (dr.HasRows)
            //    {
            //        dr.Read();
            //        Session["uname"] = dr["uname"];

            //    }
            //    cn.Close();
            //    Response.Redirect("~/User/booknow.aspx");
            //}
            //catch(Exception ) {
            //    Response.Redirect("~/User/user_signup.aspx");
            //}

            //if (Label1.Text == null)
            //{
            //    Response.Redirect("~/User/user_signin.aspx");
            //}
            //else
            //{

            //    Response.Redirect("~/User/booknow.aspx");
            //}

        }

        protected void Repeater3_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Repeater6_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }       
 }

        
   
