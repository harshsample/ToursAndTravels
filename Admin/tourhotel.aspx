<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="tourhotel.aspx.cs" Inherits="Project.Admin.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Tours Hotel</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours Hotel</a></li>
                                   
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
           <div class="card-title">Enter Tour Hotel Here...</div>
           <hr>
            <form runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                        <div class="form-group">
                            <label for="input-6">Select Place Name</label>
                            <%--<input type="text" class="form-control form-control-rounded" id="input-6" placeholder="Enter Your Name">--%>
                           
                            <asp:DropDownList ID="ddlplacename" required="this field is required" runat="server" class="form-control form-control-rounded" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="placename" DataValueField="tdid"></asp:DropDownList>

                            <asp:SqlDataSource runat="server"  ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourdetails]"></asp:SqlDataSource>
                        </div>
                    </ContentTemplate>

                </asp:UpdatePanel>
           <div class="form-group">
            <label for="input-7">Hotel Name </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="hotelname" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Hotel Name"></asp:TextBox>
           </div>

                 <div class="form-group">
            <label for="input-9">Days</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-9" placeholder="Enter Password">--%>
                     <asp:TextBox ID="txtday" required="this field is required" runat="server" class="form-control form-control-rounded"  placeholder="Enter Days" ></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-10">Discription</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-10" placeholder="Confirm Password">--%>
               <asp:TextBox ID="discription" required="this field is required" class="form-control form-control-rounded" runat="server"  placeholder="Enter Discription" ></asp:TextBox>
           </div>
          




           <div class="form-group">
            <label for="input-8">Place Image</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-8" placeholder="Enter Your Mobile Number">--%>
          
                <div class="fallback">
                    <asp:FileUpload ID="FileUpload1"  runat="server" />
                    <asp:Label ID="Label2" runat="server" Text="" ></asp:Label>
                    <asp:Image ID="Image1" runat="server" Width="100px" Height="100px"/>
                </div>
           </div>
          
           <div class="form-group">
            <%--<button type="submit" class="btn btn-primary btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
               <asp:Button ID="btn_insertplace" runat="server" class="btn btn-primary btn-round px-5" Text="Insert" OnClick="btn_insertplace_Click"  />
               <asp:Button ID="btn_updateplace" runat="server" Text="Update"   class="btn btn-success btn-round px-5" Visible="False" OnClick="btn_updateplace_Click"  />
               <asp:Button ID="btn_cancel" runat="server" class="btn btn-danger btn-round px-5" Text="Cancel" />
          </div>

          </form>
         </div>
         </div>
      </div>
    </div>
</asp:Content>
