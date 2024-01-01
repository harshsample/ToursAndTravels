<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="AHome.aspx.cs" Inherits="Project.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Dashboard</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    
                                </ol>
                            </div>
                            <a href="#" class="white_btn3">Create Report</a>
                        </div>
                    </div>
                </div>
    
     <div class="row mt-3">
       <div class="col-12 col-lg-6 col-xl-3">
         <div class="card gradient-deepblue">
           <div class="card-body">
              <h3 class="text-white mb-0">
                  <asp:Label ID="lblusers" runat="server" Text=""></asp:Label> <span class="float-right">  <span class="ti-user"></span><span class="icon-name"></span></span></h3>
                <div class="progress my-3" style="height:3px;">
                   <div class="progress-bar" style="width:55%"></div>
                </div>
              <p class="mb-0 text-white small-font">All Users <span class="float-right">+4.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
            </div>
         </div> 
       </div>
       <div class="col-12 col-lg-6 col-xl-3">
         <div class="card gradient-orange">
           <div class="card-body">
              <h3 class="text-white mb-0">
                  <asp:Label ID="lbltours" runat="server" Text=""></asp:Label>
                  <span class="float-right"><span>

                      <span class="ti-car"></span><span class="icon-name"></span>
                  </span>
                                             </span></h3>
                <div class="progress my-3" style="height:3px;">
                   <div class="progress-bar" style="width:55%"></div>
                </div>
              <p class="mb-0 text-white small-font">Total Tours <span class="float-right">+1.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
            </div>
         </div>
       </div>
       <div class="col-12 col-lg-6 col-xl-3">
         <div class="card gradient-ohhappiness">
            <div class="card-body">
              <h3 class="text-white mb-0">
                  <asp:Label ID="lbltourguide" runat="server" Text=""></asp:Label><span class="float-right"><i class="fa fa-eye"></i></span></h3>
                <div class="progress my-3" style="height:3px;">
                   <div class="progress-bar" style="width:55%"></div>
                </div>
              <p class="mb-0 text-white small-font">Tour Guiders <span class="float-right">+5.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
            </div>
         </div>
       </div>
       <div class="col-12 col-lg-6 col-xl-3">
         <div class="card gradient-ibiza">
            <div class="card-body">
              <h3 class="text-white mb-0">
                  <asp:Label ID="lblhotel" runat="server" Text="Label"></asp:Label> <span class="float-right"><i class="fa fa-envira"></i></span></h3>
                <div class="progress my-3" style="height:3px;">
                   <div class="progress-bar" style="width:55%"></div>
                </div>
              <p class="mb-0 text-white small-font">All Hotel<span class="float-right">+2.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
            </div>
         </div>
       </div>
         <div class="col-12 col-lg-6 col-xl-3">
         <div class="card gradient-ibiza">
            <div class="card-body">
              <h3 class="text-white mb-0">
                  <asp:Label ID="lblbooking" runat="server" Text=""></asp:Label> <span class="float-right"><i class="fa fa-envira"></i></span></h3>
                <div class="progress my-3" style="height:3px;">
                   <div class="progress-bar" style="width:55%"></div>
                </div>
              <p class="mb-0 text-white small-font">All Booking <span class="float-right">+2.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
            </div>
         </div>
       </div>
          <div class="col-12 col-lg-6 col-xl-3">
         <div class="card gradient-ibiza">
            <div class="card-body">
              <h3 class="text-white mb-0">
                  <asp:Label ID="lblcustomize" runat="server" Text=""></asp:Label> <span class="float-right"><i class="bi bi-person"></i></span></h3>
                <div class="progress my-3" style="height:3px;">
                   <div class="progress-bar" style="width:55%"></div>
                </div>
              <p class="mb-0 text-white small-font">All Customize Booking <span class="float-right">+2.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
            </div>
         </div>
       </div>
     
     </div><!--End Row-->

	  
      <!--End Dashboard Content-->
    <asp:Label ID="Label1" runat="server" Text="" Visible="False"></asp:Label>
    </div>
</asp:Content>
