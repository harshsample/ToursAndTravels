using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
namespace Project.Admin
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string fname;
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        string filename;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_addgallary_Click(object sender, EventArgs e)
        {

            string filepath = Path.GetExtension(FileUpload1.FileName);
            if (filepath != ".jpg" && filepath != ".gif" && filepath != ".png")
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "Only .jpg or .gif or .png file are allowed...";
            }
            else
            {
                foreach (HttpPostedFile postedfile in FileUpload1.PostedFiles)
                {
                    string filename = Path.GetFileName(postedfile.FileName);

                    postedfile.SaveAs(Server.MapPath("~/Gallary/") + filename);
                    cn.Open();
                    qry = "insert into pname_gallary values('" + ddlplacename.SelectedValue + "','" + filename + "')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();

                }
                lblmsg.ForeColor = Color.Green;
                lblmsg.Text = string.Format("{0} selected Images are saved !", FileUpload1.PostedFiles.Count);
            }

          
        }

        protected void FileUpload1_DataBinding(object sender, EventArgs e)
        {

           
        }
    
    }
}