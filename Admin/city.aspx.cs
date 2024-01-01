using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Admin
{
    public partial class WebForm34 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string cityid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cityid = Request.QueryString.Get("cityid");
                ViewState["cityid"] = Request.QueryString.Get("cityid");
                if (cityid != null)
                {
                    btn_updatecity.Visible = true;
                    btn_insertcity.Visible = false;



                    cn.Open();
                    qry = "select * from city_mstr where cityid=" + cityid;
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        dr.Read();
                        ddlcountry.SelectedValue = dr["cid"].ToString();
                        ddlstate.SelectedValue = dr["sid"].ToString();
                        txtcity.Text = dr["cityname"].ToString();
                    }


                }
            }
        }

        protected void btn_insertcity_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into city_mstr values('" + ddlcountry.SelectedValue + "','" + ddlstate.SelectedValue + "','" + txtcity.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/dispcity.aspx");
        }

        protected void btn_updatecity_Click(object sender, EventArgs e)
        {
            btn_updatecity.Visible = false;
            btn_insertcity.Visible = true;
            cn.Open();
            qry = "update city_mstr set cid=" + ddlcountry.SelectedValue + ", sid=" + ddlstate.SelectedValue + ", cityname='" + txtcity.Text + "' where cityid=" + ViewState["cityid"].ToString();
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/dispcity.aspx");
        }
    }
}