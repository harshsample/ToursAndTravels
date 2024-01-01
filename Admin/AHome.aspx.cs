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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["aid"].ToString();
           

            cn.Open();
            qry = "select count(*) from user_mstr";
            cmd = new SqlCommand(qry, cn);
            int cuser = Convert.ToInt32(cmd.ExecuteScalar());
            lblusers.Text = cuser.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from tourdetails";
            cmd = new SqlCommand(qry, cn);
            int tours = Convert.ToInt32(cmd.ExecuteScalar());
            lbltours.Text = tours.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from tour_guides";
            cmd = new SqlCommand(qry, cn);
            int tourguides = Convert.ToInt32(cmd.ExecuteScalar());
            lbltourguide.Text = tourguides.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from hotel_detail";
            cmd = new SqlCommand(qry, cn);
            int tourh = Convert.ToInt32(cmd.ExecuteScalar());
            lblhotel.Text = tourh.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from book_mstr";
            cmd = new SqlCommand(qry, cn);
            int booking = Convert.ToInt32(cmd.ExecuteScalar());
            lblbooking.Text = booking.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from customizeTourBook";
            cmd = new SqlCommand(qry, cn);
            int cbook = Convert.ToInt32(cmd.ExecuteScalar());
            lblcustomize.Text = cbook.ToString();
            cn.Close();
        }
    }
}