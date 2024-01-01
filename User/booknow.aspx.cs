using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project.User
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        string tdid;
        int totalpriceperent;
        int totalpricechild;
        string bid;
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["email"] == "")
            {
                Response.Redirect("~/User/user_signup.aspx");
            }
            //else
            //{
            //    Response.Redirect("~/User/booknow.aspx");
            //}





            txtunsername.Text = Session["uname"].ToString();
                txtemail.Text = Session["email"].ToString();
                txtmob.Text = Session["mob"].ToString();
                //txtcountry.Text = Session["country"].ToString();
                //txtstate.Text = Session["state"].ToString();    
                //txtcity.Text = Session["city"].ToString() ;
                Label2.Text = Session["uid"].ToString();
            //lblparent.Text = Session["aprice"].ToString();
            //lblchild.Text = Session["cprice"].ToString();
            Label1.Text = Session["tdid"].ToString();
          

            cn.Open();

            qry = "select * from user_mstr where uid=" + Session["uid"].ToString();
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                string contid = dr["country"].ToString();
                cn.Close();
                cn.Open();
                qry = "select * from country_mstr where cid=" + contid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtcountry.Text = dr["cname"].ToString();
                }
            }

            cn.Close();


            cn.Open();



            qry = "select * from user_mstr where uid=" + Session["uid"].ToString();
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                string stateid = dr["state"].ToString();
                cn.Close();
                cn.Open();
                qry = "select * from state_mstr where sid=" + stateid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtstate.Text = dr["sname"].ToString();
                }
            }

            cn.Close();


            cn.Open();



            qry = "select * from user_mstr where uid=" + Session["uid"].ToString();
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                string cityid1 = dr["city"].ToString();
                cn.Close();
                cn.Open();
                qry = "select * from city_mstr where cityid=" + cityid1;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtcity.Text = dr["cityname"].ToString();
                }
            }

            cn.Close();




            //price

            //cn.Open();



            //qry = "select * from tourdetails where tdid=" + Session["tdid"].ToString();
            //cmd = new SqlCommand(qry, cn);        
            //dr = cmd.ExecuteReader();


            //if (dr.HasRows)
            //{
            //    dr.Read();
            //    lblparent.Text = dr["aprice"].ToString();
            //}

            //cn.Close();

           
                tdid = Request.QueryString.Get("tdid");
                
                if (tdid != null)
                {
                   



                    cn.Open();
                    qry = "select * from tourdetails where tdid=" + tdid;
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        dr.Read();

                        lblparent.Text = dr["aprice"].ToString();
                        lblchild.Text = dr["cprice"].ToString();
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
            int childprice = Convert.ToInt32(ddlchild.SelectedValue);
            int lblchidprice = Convert.ToInt32(lblchild.Text);
            lbltotalchild.Text = (childprice * lblchidprice).ToString();


            //lblTotalprice.Text = lbltotalchild.Text;
            totalpricechild = Convert.ToInt32(lbltotalchild.Text);
            int amt = Convert.ToInt32(lblTotalprice.Text);

            lblTotalprice.Text =  (amt + totalpriceperent + totalpricechild).ToString();
        }

        protected void btn_booknow_Click(object sender, EventArgs e)
        {
            DateTime d1 = DateTime.Now;
            string cdate = d1.ToString();
            string d2 = cdate.Substring(0,10);
            
            cn.Open();
            qry = "insert into book_mstr values('" + txtunsername.Text + "','" + txtmob.Text + "','" + txtemail.Text + "','" + txtcountry.Text + "','" + txtstate.Text + "','" + txtcity.Text + "','" + d2 + "'," + ddlparent.SelectedValue + "," + ddlchild.SelectedValue + ",'" + lbltotprice.Text + "','" + lbltotalchild.Text + "','" + lblTotalprice.Text + "','" + tdid + "','UnPaid')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();


            cn.Open();

            qry = "select * from book_mstr where email='" + txtemail.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                //Session["totalprice"] = dr["totalprice"].ToString();
                Session["email"] = dr["email"].ToString();
                Session["totalprice"] = dr["totalprice"].ToString();
                Session["uname"] = dr["uname"].ToString();
                Session["bid"] = dr["bid"].ToString();
            }

            cn.Close();

            Response.Redirect("~/User/Payment.aspx");

        }
    }
}