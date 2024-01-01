<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="tourmap.aspx.cs" Inherits="Project.Admin.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Tours Itinerary</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours Map</a></li>
                                   
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
           <div class="card-title">Enter Tour Map Here...</div>
           <hr>
            <form runat="server">
                

                        <div class="form-group">
                            <label for="input-6">Select Place Name</label>
                            <%--<input type="text" class="form-control form-control-rounded" id="input-6" placeholder="Enter Your Name">--%>
                            
                            <asp:DropDownList ID="ddltourmap" runat="server" class="form-control form-control-rounded" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="placename" DataValueField="tdid"></asp:DropDownList>



                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourdetails]"></asp:SqlDataSource>
                        </div>
            
           <div class="form-group">
            <label for="input-9">Map Src</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-9" placeholder="Enter Password">--%>
               <%--<asp:TextBox ID="days" class="form-control form-control-rounded" runat="server"  placeholder="Enter Place Days"></asp:TextBox>--%>
               <asp:TextBox ID="txtmapsrc" class="form-control form-control-rounded" runat="server" placeholder="Enter Place Src"></asp:TextBox>
           </div>
          
          
           <div class="form-group">
            <%--<button type="submit" class="btn btn-primary btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
               <asp:Button ID="btn_insert" runat="server"  class="btn btn-primary btn-round px-5" Text="Insert" OnClick="btn_insert_Click"  />
               <asp:Button ID="btn_update" runat="server" class="btn btn-success btn-round px-5" Text="Update" Visible="False" />
          </div>

          </form>
         </div>
         </div>
      </div>
    </div>
</asp:Content>
