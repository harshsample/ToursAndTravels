<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="passport.aspx.cs" Inherits="Project.Admin.WebForm43" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Passport</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Passport</a></li>
                                   
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
           <div class="card-title">Enter Passport Here...</div>
           <hr>
            <form runat="server">
               
           <div class="form-group">
            <label for="input-7">No</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtno" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter No"></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-8">Details</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-8" placeholder="Enter Your Mobile Number">--%>
          
               <asp:TextBox ID="txtdetails" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Passport Details" TextMode="MultiLine"></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-9">Reuired For</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-9" placeholder="Enter Password">--%>
               <asp:TextBox ID="txtrequiredfor" required="this field is required" class="form-control form-control-rounded" runat="server"  placeholder="Enter Required" TextMode="MultiLine"></asp:TextBox>
           </div>
           
          
           <div class="form-group">
            <%--<button type="submit" class="btn btn-primary btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
               <asp:Button ID="btn_insertpassport" runat="server" class="btn btn-primary btn-round px-5" Text="Insert" OnClick="btn_insertpassport_Click" />
               <asp:Button ID="btn_updatepassport" runat="server" Text="Update"   class="btn btn-success btn-round px-5" Visible="False" OnClick="btn_updatepassport_Click" />
               <asp:Button ID="btn_cancel" runat="server" class="btn btn-danger btn-round px-5" Text="Cancel" />
          </div>

          </form>
         </div>
         </div>
      </div>
    </div>
</asp:Content>
