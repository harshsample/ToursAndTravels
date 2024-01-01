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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        
        string ttid;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ttid = Request.QueryString.Get("ttid");
                ViewState["ttid"] = Request.QueryString.Get("ttid");
                if (ttid != null)
                {
                   btn_update.Visible = true;
                    btn_insert.Visible = false;



                    cn.Open();
                    qry = "select * from tourtype where ttid=" + ttid;
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        dr.Read();
                        tourtype.Text = dr["tourtype"].ToString();
                    }


                }
            }
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into tourtype values('" + tourtype.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            Response.Redirect("~/Admin/disptourtype.aspx");
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            btn_update.Visible = false;
            btn_insert.Visible = true;

            cn.Open();
            qry = "update  tourtype set tourtype='" + tourtype.Text + "' where ttid=" + ViewState["ttid"].ToString();
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/disptourtype.aspx");
        }
    }
}