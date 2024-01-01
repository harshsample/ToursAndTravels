using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;

namespace Project.Admin
{
    public partial class email : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnpass_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from admin_mstr where email='" + txtemail.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                string myGUID = Guid.NewGuid().ToString();

                MailMessage mail = new MailMessage();
                string mailid = txtemail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("toursandtravels020@gmail.com");
                mail.Subject = "registration";
                string Body = "<b>click the link below to reset your password </b> https://localhost:44304/client/retrypass.aspx " + myGUID;
                mail.Body = Body;
                mail.IsBodyHtml = true;


                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("toursandtravels020@gmail.com", "vcyvavmpbzhxbpot");
                smtp.Port = 587;
                smtp.EnableSsl = true;
                //smtp.UseDefaultCredentials = true;
                //smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(mail);
            }
            else
            {

            }
        }
    }
}