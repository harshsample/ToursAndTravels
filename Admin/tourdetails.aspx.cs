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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        string fname;
        string tdid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tdid = Request.QueryString.Get("tdid");
                ViewState["tdid"] = Request.QueryString.Get("tdid");
                if (tdid != null)
                {
                    btn_updateplace.Visible = true;
                    btn_insertplace.Visible = false;



                    cn.Open();
                    qry = "select * from tourdetails where tdid=" + tdid;
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        dr.Read();
                        
                        ddltourtype.SelectedValue = dr["ttid"].ToString();
                        placename.Text = dr["placename"].ToString();
                        Image1.ImageUrl = "~/Admin/image/" + dr[ "image"].ToString();
                        days.Text = dr["days"].ToString();
                        discription.Text = dr["dispcription"].ToString();
                        txtadultprice.Text = dr["aprice"].ToString();
                        txtchildrenprice.Text = dr["cprice"].ToString();
                    }


                }
            }
        }

      

    
           
        protected void btn_insertplace_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFiles)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpg")
                {
                //    if (FileUpload1.PostedFile.ContentLength < 50000)
                //    {
                        fname = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("~/Admin/image/" + fname));
                        Image1.ImageUrl = "~/Admin/image/" + fname;
                        Label2.Text = "File Uploded..";
                    cn.Open();
                    qry = "insert into tourdetails values('" + ddltourtype.SelectedValue + "','" + placename.Text + "','" + fname + "','" + days.Text + "','" + discription.Text + "','" + txtadultprice.Text + "','" + txtchildrenprice.Text + "')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("~/Admin/disptourdetails.aspx");
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

            //cn.Open();
            //qry = "insert into tourdetails values('" + ddltourtype.SelectedValue + "','" + placename.Text + "','" + fname + "','" + days.Text + "','" + discription.Text + "','" + txtadultprice.Text + "','" +txtchildrenprice.Text+ "')";
            //cmd = new SqlCommand(qry, cn);
            //cmd.ExecuteNonQuery();
            //cn.Close();
            //Response.Redirect("~/Admin/disptourdetails.aspx");
        }

        protected void btn_updateplace_Click(object sender, EventArgs e)
        {
            btn_updateplace.Visible = false;
            btn_insertplace.Visible = true;


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
                    qry = "update tourdetails set ttid='" + ddltourtype.SelectedValue + "', placename='" + placename.Text + "', image='" + fname + "', days='" + days.Text + "', dispcription='" + discription.Text + "', aprice='" + txtadultprice.Text + "', cprice='" + txtchildrenprice.Text + "' where tdid=" + ViewState["tdid"].ToString();
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("~/Admin/disptourdetails.aspx");
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
            //cn.Open();
            //qry = "update tourdetails set ttid='" + ddltourtype.SelectedValue + "', placename='" + placename.Text + "', image='" + fname + "', days='" + days.Text + "', dispcription='" + discription.Text + "', aprice='" + txtadultprice.Text + "', cprice='" + txtchildrenprice.Text + "' where tdid=" + ViewState["tdid"].ToString();
            //cmd = new SqlCommand(qry, cn);
            //cmd.ExecuteNonQuery();
            //cn.Close();
            //Response.Redirect("~/Admin/disptourdetails.aspx");
        }

        protected void discription_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtadultprice_TextChanged(object sender, EventArgs e)
        {

        }
    }
}