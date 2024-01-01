using Project.Admin;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.User
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;

        SqlDataReader dr;
        string randomCode;
        string mailid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_user_signup_Click(object sender, EventArgs e)
        {
            //Random rand = new Random();
            //randomCode = (rand.Next(999999).ToString());

            //MailMessage mail = new MailMessage();


            //mailid = txtemail.Text;
            //mail.To.Add(mailid);
            //mail.From = new MailAddress("toursandtravels020@gmail.com");
            //mail.Subject = "Tours & Travels";
            //string Body = "<b>Your OTP is </b>" + randomCode;
            //mail.Body = Body;
            //mail.IsBodyHtml = true;

            //SmtpClient smtp = new SmtpClient();


            //smtp.Host = "smtp.gmail.com";
            //smtp.UseDefaultCredentials = false;
            //smtp.Credentials = new System.Net.NetworkCredential("toursandtravels020@gmail.com", "gltefkydztjuprgp");
            //smtp.Port = 587;
            //smtp.EnableSsl = true;
            //smtp.Send(mail);


            //cn.Open();
            //qry = "insert into user_mstr values('" + txtuname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtmob.Text + "','" + ddlcountry.SelectedValue + "','" +ddlstate.SelectedValue + "','" +ddlcity.SelectedValue+ "','" + randomCode + "','0')";
            //cmd = new SqlCommand(qry, cn);
            //cmd.ExecuteNonQuery();
            //cn.Close();

            //Response.Redirect("~/User/user_signin.aspx");
            cn.Open();
            qry = "select * from user_mstr where email='" + txtemail.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Label1.Text = "This Userid Alredy exists try to signin ";
            }
            else
            {
                Random rand = new Random();
                randomCode = (rand.Next(999999).ToString());

                MailMessage mail = new MailMessage();


                mailid = txtemail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("toursandtravels020@gmail.com");
                mail.Subject = "Tours & Travels";
                string Body = "<b>Your OTP is </b>" + randomCode;
                mail.Body = Body;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();


                smtp.Host = "smtp.gmail.com";
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("toursandtravels020@gmail.com", "gltefkydztjuprgp");
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(mail);


                cn.Open();
                qry = "insert into user_mstr values('" + txtuname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtmob.Text + "','" + ddlcountry.SelectedValue + "','" + ddlstate.SelectedValue + "','" + ddlcity.SelectedValue + "','" + randomCode + "','0')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();

                Response.Redirect("~/User/user_signin.aspx");

            }
            cn.Close();
        }

        protected void txtemail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}