using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.User
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        string cid;
        int totalpriceperent;
        int totalpricechild;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtunsername.Text = Session["uname"].ToString();
            txtemail.Text = Session["email"].ToString();
            txtmob.Text = Session["mob"].ToString();
            
            //txtcountry.Text = Session["country"].ToString();
            //txtstate.Text = Session["state"].ToString();    
            //txtcity.Text = Session["city"].ToString() ;
            Label2.Text = Session["uid"].ToString();

            cid = Request.QueryString.Get("cid");

            if (cid != null)
            {




                cn.Open();
                qry = "select * from customize_tour where cid=" + cid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();

                    lblparent.Text = dr["pprice"].ToString();
                    lblchild.Text = dr["cprice"].ToString();
                   txtdate.Text = dr["sdate"].ToString();
                    txtenddate.Text = dr["edate"].ToString();
                    //txtadultprice.Text = dr["aprice"].ToString();
                    //txtchildrenprice.Text = dr["cprice"].ToString();
                }

                cn.Close();
            }
        }

        protected void ddlparent_SelectedIndexChanged(object sender, EventArgs e)
        {
            int parentprice = Convert.ToInt32(ddlparent.SelectedValue);
            int lblparentprice = Convert.ToInt32(lblparent.Text);


            lbltotprice.Text = (parentprice * lblparentprice).ToString();
            // lbltotprice.Text = ddlparent.SelectedValue *  lblparent.Text;

            //lblTotalprice.Text = lbltotprice.Text  ;

            totalpriceperent = Convert.ToInt32(lbltotprice.Text);
            lblTotalprice.Text = (totalpriceperent + totalpricechild).ToString();
        }

        protected void ddlchild_SelectedIndexChanged(object sender, EventArgs e)
        {
            int parentprice = Convert.ToInt32(ddlparent.SelectedValue);
            int lblparentprice = Convert.ToInt32(lblparent.Text);


            lbltotprice.Text = (parentprice * lblparentprice).ToString();
            // lbltotprice.Text = ddlparent.SelectedValue *  lblparent.Text;

            //lblTotalprice.Text = lbltotprice.Text  ;

            totalpriceperent = Convert.ToInt32(lbltotprice.Text);
            lblTotalprice.Text = (totalpriceperent + totalpricechild).ToString();
        }

        protected void btn_booknow_Click(object sender, EventArgs e)
        {


        }

        protected void btn_booknow_Click1(object sender, EventArgs e)
        {


            cn.Open();
            qry = "insert into customizeTourBook values('" + txtunsername.Text + "','" + txtmob.Text + "','" + txtemail.Text + "','" + txtdate.Text + "','" + txtenddate.Text + "'," + ddlparent.SelectedValue + "," + ddlchild.SelectedValue + ",'" + lbltotprice.Text + "','" + lbltotalchild.Text + "','" + lblTotalprice.Text + "','" + cid + "','UnPaid')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();


            cn.Open();

            qry = "select * from customizeTourBook where email='" + txtemail.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                //Session["totalprice"] = dr["totalprice"].ToString();
                Session["email"] = dr["email"].ToString();
                Session["totalprice"] = dr["totalprice"].ToString();
                Session["uname"] = dr["uname"].ToString();
                Session["cbid"] = dr["cbid"].ToString();
            }

            cn.Close();

            Response.Redirect("~/User/payment1.aspx");
        }
    }
}