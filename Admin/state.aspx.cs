using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Admin
{
    public partial class WebForm31 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string sid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                sid = Request.QueryString.Get("sid");
                ViewState["sid"] = Request.QueryString.Get("sid");
                if (sid != null)
                {
                    btn_updatestate.Visible = true;
                    btn_insertstate.Visible = false;



                    cn.Open();
                    qry = "select * from state_mstr where sid=" + sid;
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        dr.Read();
                        ddlcountry.SelectedValue = dr["cid"].ToString();
                        txtstate.Text = dr["sname"].ToString();
                    }


                }
            }
        }

        protected void btn_insertstate_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into state_mstr values('" + ddlcountry.SelectedValue + "','" + txtstate.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/dispstate.aspx");
        }

        protected void btn_updatestate_Click(object sender, EventArgs e)
        {
            btn_updatestate.Visible = false;
            btn_insertstate.Visible = true;
            cn.Open();
            qry = "update state_mstr set cid=" + ddlcountry.SelectedValue + ", sname='" + txtstate.Text + "' where sid="+ ViewState["sid"].ToString();
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/dispstate.aspx");
        }
    }
}