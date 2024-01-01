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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string fname;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpg")
                {
                    if (FileUpload1.PostedFile.ContentLength < 5000000)
                    {
                        fname = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("~/Guidrs/" + fname));
                        Image1.ImageUrl = "~/Guidrs/" + fname;
                        Label2.Text = "File Uploded..";

                    }
                    else
                    {
                        Label2.Text = "File is too Large..";

                    }
                }
                else
                {
                    Label2.Text = "Select Image File...";

                }
            }
            else
            {
                Label2.Text = "Select File ...";
            }

            cn.Open();
            qry = "insert into tour_guides values('" + txttgname.Text + "','" + txttgemail.Text + "','" + txtmobno.Text + "','" + txtpass.Text + "','" + fname + "','0')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/User/aboutUs.aspx");
        }

        protected void txttgname_TextChanged(object sender, EventArgs e)
        {

        }
    }
}