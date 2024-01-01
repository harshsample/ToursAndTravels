<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="tourtype.aspx.cs" Inherits="Project.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Tours Type</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours Type</a></li>
                                   
                                </ol>
                            </div>
                            <a href="disptourtype.aspx" class="white_btn3">Display Report</a>
                        </div>
                    </div>
                </div>
     
        

   <div class="col-lg-12">
        <div class="card">
           <div class="card-body">
           <div class="card-title">Insert Tour Type Here...</div>
           <hr>
            <form runat="server">
           <div class="form-group">
            <label for="input-6">Enter Tour Type</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-6" placeholder="Enter Your Name">--%>
               <asp:TextBox ID="tourtype" required="this field is required" runat="server" class="form-control form-control-rounded" placeholder="Enter Tour Type"></asp:TextBox>
           </div>
          
           <div class="form-group">
           <%-- <button type="submit" class="btn btn-success btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
               <asp:Button ID="btn_insert"  class="btn btn-success btn-round px-5" runat="server" Text="SUBMIT" OnClick="btn_insert_Click" />
               <asp:Button ID="btn_update" class="btn btn-primary btn-round px-5" runat="server" Text="UPDATE" Visible="False" OnClick="btn_update_Click" />

                 <%-- <button type="submit" class="btn btn-success btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
                  <asp:Button ID="btn_cancel" class="btn btn-danger btn-round px-5" runat="server" Text="Cancel" />
          </div>
          
          </form>
         </div>
         </div>
      </div>
 
 
</asp:Content>
