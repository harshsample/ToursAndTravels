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
    public partial class WebForm22 : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string tiid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tiid = Request.QueryString.Get("tiid");
                ViewState["tiid"] = Request.QueryString.Get("tiid");
                if (tiid != null)
                {
                    btn_update.Visible = true;
                    btn_insert.Visible = false;



                    cn.Open();
                    qry = "select * from tour_exclusion where tiid=" + tiid;
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        dr.Read();
                        ddlexclusion.SelectedValue = dr["tdid"].ToString();
                        discription.Text = dr["discription"].ToString();
                    }


                }
            }
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into tour_exclusion values('" + ddlexclusion.SelectedValue + "','" + discription.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/disptourexclusion.aspx");
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            btn_update.Visible = false;
            btn_insert.Visible = true;

            cn.Open();
            qry = "update tour_exclusion set tdid='" + ddlexclusion.SelectedValue + "',discription='" + discription.Text + "' where tiid=" + ViewState["tiid"].ToString();
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/disptourexclusion.aspx");
        }
    }
}