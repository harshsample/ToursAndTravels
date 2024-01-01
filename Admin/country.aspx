<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="country.aspx.cs" Inherits="Project.Admin.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Country</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                   
                                   
                                </ol>
                            </div>
                            <a href="disptourdetails.aspx" class="white_btn3">Display Report</a>
                        </div>
                    </div>
                </div>
     
    <div>
      <div class="col-lg-12">
        <div class="card">
           <div class="card-body">
           <div class="card-title">Enter Country Here...</div>
           <hr>
            <form runat="server">
               
           <div class="form-group">
            <label for="input-7">Country Name </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtcountry" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Place Name"></asp:TextBox>
           </div>
           
           <div class="form-group">
            <%--<button type="submit" class="btn btn-primary btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
               <asp:Button ID="btn_insertcountry" runat="server" class="btn btn-primary btn-round px-5" Text="Insert" OnClick="btn_insertcountry_Click"  />
               <asp:Button ID="btn_updatecountry" runat="server" Text="Update"   class="btn btn-success btn-round px-5" Visible="False" OnClick="btn_updatecountry_Click" />
               <asp:Button ID="btn_cancel" runat="server" class="btn btn-danger btn-round px-5" Text="Cancel" />
          </div>

          </form>
         </div>
         </div>
      </div>
    </div>
</asp:Content>
