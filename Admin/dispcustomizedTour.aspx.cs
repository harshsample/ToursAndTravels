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
    public partial class WebForm48 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string fname;
        string cid;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                cid = Request.QueryString.Get("cid");
                ViewState["cid"] = Request.QueryString.Get("cid");
                if (cid != null)





                    cn.Open();
                qry = "select * from customize_tour where cid=" + cid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    txtuname.Text = dr["uname"].ToString();
                    placename.Text = dr["tname"].ToString();
                    txtparent.Text = dr["parent"].ToString();
                    txtchild.Text = dr["child"].ToString();
                    txtsdate.Text = dr["sdate"].ToString();
                    txtedate.Text = dr["edate"].ToString();
                    Image1.ImageUrl = "~/Admin/image/" + dr["image"].ToString();
                    txtdays.Text = dr["days"].ToString();

                    txtadultprice.Text = dr["pprice"].ToString();
                    txtchildrenprice.Text = dr["cprice"].ToString();
                }

                cn.Close();
            }
        }

        protected void btn_updateplace_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    //    if (FileUpload1.PostedFile.ContentLength < 50000)
                    //    {
                    fname = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Admin/image/" + fname));
                    Image1.ImageUrl = "~/Admin/image/" + fname;
                    Label2.Text = "File Uploded..";
                    cn.Open();
                    qry = "update customize_tour set uname='" + txtuname.Text + "', tname='" + placename.Text + "', parent='" + txtparent.Text + "', child='" + txtchild.Text + "', sdate='" + txtsdate.Text + "', edate='" + txtedate.Text + "', image='" + fname + "', days='" + txtdays.Text + "', pprice='" + txtadultprice.Text + "', cprice='" + txtchildrenprice.Text + "' where cid=" + ViewState["cid"].ToString();
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("~/Admin/customizeTour.aspx");
                    //}
                    //else
                    //{
                    //    Label2.Text = "File is too Large..";

                    //}
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
        }



    }

    
}


