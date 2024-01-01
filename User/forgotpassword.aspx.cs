using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.User
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;


       
        string mailid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from user_mstr where email='" + txtemail.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
               

                MailMessage mail = new MailMessage();
                string mailid = txtemail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("toursandtravels020@gmail.com");
                mail.Subject = "Change Your Password";
                string Body = "<b>click the link below to reset your password </b> http://localhost:21781/User/retrypass.aspx?email="+txtemail.Text ;
                mail.Body = Body;
                mail.IsBodyHtml = true;


                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("toursandtravels020@gmail.com", "gltefkydztjuprgp");
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