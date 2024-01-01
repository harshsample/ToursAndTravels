using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.User
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        string cbid;
        public string orderId;
        public string orderIds;
        public string name;
        public string product;
        public string email;
        public string contact;
        public string addressn;
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["email"].ToString();
            Label2.Text = Session["cbid"].ToString();
            cn.Open();



            qry = "select * from customizeTourBook where email='" + Session["email"].ToString() + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                txtTotalprice.Text = dr["totalprice"].ToString();

            }


            cn.Close();



            if (!IsPostBack)
            {
                try
                {

                    name = "Harsh";
                    product = "TripWell";
                    email = "ranaharsh020@gmail.com";
                    contact = "8320438996";
                    addressn = "Delhi";
                    Session["product"] = product;
                    txtTotalprice.Text = Session["totalprice"].ToString();
                    Dictionary<string, object> input = new Dictionary<string, object>();


                    //string orderss = Session["OrderId"].ToString();
                    string orderss = System.DateTime.Now.Ticks.ToString();
                    orderIds = orderss;
                    //
                    int am = Convert.ToInt32(txtTotalprice.Text);
                    input.Add("amount", am * 100);
                    //input.Add("amount", am * 100);
                    //input.Add("amount", 100); // this amount should be same as transaction amount
                    input.Add("currency", "INR");
                    input.Add("receipt", orderss);
                    input.Add("payment_capture", 1);

                    string key = "rzp_test_5ivBZfdNOsL9G5";
                    string secret = "u54inFSAvSZzSBIiCnWJ67oR";

                    //Session["totalprice"] = "100";
                    RazorpayClient client = new RazorpayClient(key, secret);
                    System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                    Razorpay.Api.Order order = client.Order.Create(input);
                    orderId = order["id"].ToString();


                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}