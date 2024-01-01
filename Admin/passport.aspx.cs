using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project.Admin
{
    public partial class WebForm43 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pid = Request.QueryString.Get("pid");
                ViewState["pid"] = Request.QueryString.Get("pid");
                if (pid != null)
                {
                    btn_updatepassport.Visible = true;
                    btn_insertpassport.Visible = false;



                    cn.Open();
                    qry = "select * from passport where pid=" + pid;
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        dr.Read();

                       
                        txtno.Text = dr["no"].ToString();
                        txtdetails.Text = dr["details"].ToString();
                        txtrequiredfor.Text = dr["requiredfor"].ToString();
                        //txtadultprice.Text = dr["aprice"].ToString();
                        //txtchildrenprice.Text = dr["cprice"].ToString();
                    }


                }
            }

        }

        protected void btn_insertpassport_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into passport values('" + txtno.Text + "','" + txtdetails.Text + "','" + txtrequiredfor.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/dipPassport.aspx");
        }

        protected void btn_updatepassport_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "update passport set no='" + txtno.Text + "', details='" + txtdetails.Text + "', requiredfor='" + txtrequiredfor.Text + "'  where pid=" + ViewState["pid"].ToString();
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Admin/dipPassport.aspx");
        }
    }
}