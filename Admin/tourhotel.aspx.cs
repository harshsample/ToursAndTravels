using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project.Admin
{
    public partial class WebForm25 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string fname;
        string hdid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdid = Request.QueryString.Get("hdid");
                ViewState["hdid"] = Request.QueryString.Get("hdid");
                if (hdid != null)
                {
                    btn_updateplace.Visible = true;
                    btn_insertplace.Visible = false;



                    cn.Open();
                    qry = "select * from hotel_detail where hdid=" + hdid;
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        dr.Read();
                        ddlplacename.SelectedValue = dr["tdid"].ToString();
                        hotelname.Text = dr["hname"].ToString();
                        
                        txtday.Text = dr["day"].ToString();
                        discription.Text = dr["discription"].ToString();
                        Image1.ImageUrl = "~/Admin/hotelImage/" + dr["image"].ToString();
                    }


                }
            }
        }

        protected void btn_insertplace_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFiles)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    //if (FileUpload1.PostedFile.ContentLength < 50000)
                    //{
                        fname = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("~/Admin/hotelImage/" + fname));
                        Image1.ImageUrl = "~/Admin/hotelImage/" + fname;
                        Label2.Text = "File Uploded..";

                    cn.Open();
                    qry = "insert into hotel_detail values('" + ddlplacename.SelectedValue + "','" + hotelname.Text + "','" + txtday.Text + "','" + discription.Text + "','" + fname + "')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("~/Admin/disptourhotel.aspx");

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

        protected void btn_updateplace_Click(object sender, EventArgs e)
        {
            btn_updateplace.Visible = false;
            btn_insertplace.Visible = true;


            if (FileUpload1.HasFiles)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    //if (FileUpload1.PostedFile.ContentLength < 50000)
                    //{
                        fname = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("~/Admin/hotelImage/" + fname));
                        Image1.ImageUrl = "~/Admin/hotelImage/" + fname;
                        Label2.Text = "File Uploded..";
                    cn.Open();
                    qry = "update hotel_detail set tdid='" + ddlplacename.SelectedValue + "', hname='" + hotelname.Text + "',  day='" + txtday.Text + "', discription='" + discription.Text + "', image='" + fname + "' where hdid=" + ViewState["hdid"].ToString();
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("~/Admin/disptourhotel.aspx");
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