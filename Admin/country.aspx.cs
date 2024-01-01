using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project.Admin
{
    public partial class WebForm28 : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string cid;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                cid = Request.QueryString.Get("cid");
                ViewState["cid"] = Request.QueryString.Get("cid");
                if (cid != null)
                {
                    btn_updatecountry.Visible = true;
                    btn_insertcountry.Visible = false;



                    cn.Open();
                    qry = "select * from country_mstr where cid=" + cid;
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        dr.Read();
                        
                        txtcountry.Text = dr["cname"].ToString();
                    }


                }
            }
        }

        protected void btn_insertcountry_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into country_mstr values('" + txtcountry.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/dispcountry.aspx");
        }

        protected void btn_updatecountry_Click(object sender, EventArgs e)
        {
            btn_updatecountry.Visible = false;
            btn_insertcountry.Visible = true;
            cn.Open();
            qry = "update country_mstr set cname='" + txtcountry.Text + "' where cid=" + ViewState["cid"].ToString();
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/dispcountry.aspx");
        }
    }
}