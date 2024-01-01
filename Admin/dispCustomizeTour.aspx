<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="dispCustomizeTour.aspx.cs" Inherits="Project.Admin.WebForm50" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Booking</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    
                                   <li class="breadcrumb-item"><a href="javascript:void(0);">Display Booking</a></li>
                                </ol>
                            </div>
                           
                        </div>
                    </div>
                </div>



  
           
  <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header"><i class="fa fa-table"></i> Data Exporting</div>
            <div class="card-body">
              <div class="table-responsive">
              <table id="example" class="table table-bordered">
                <thead>
                    <tr>
                        <th>Booking Id</th>
                        <th>User Name</th>
                        <th>Mobile No.</th>
                       <th>Email</th>
                       
                        <th>Start Date</th>
                         <th>End Date</th>
                        <th>Parent</th>
                        <th>Child</th>
                        <th>Parent Total</th>
                        <th>Child Total</th>
                        <th>Total Price</th>
                        <th>Tour Name</th>
                        <th>Status</th>
                         
                    </tr>
                </thead>
                <tbody>
                      
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("cbid") %></td>
                                <td><%#Eval("uname") %></td>
                                <td><%#Eval("mob") %></td>
                                <td><%#Eval("email") %></td>

                                <td><%#Eval("sdate") %></td>
                                <td><%#Eval("edate") %></td>
                                <td><%#Eval("parent") %></td>
                                <td><%#Eval("child") %></td>
                                <td><%#Eval("ptotal") %></td>
                                <td><%#Eval("ctotal") %></td>
                                <td><%#Eval("totalprice") %></td>
                                <td><%#Eval("cid") %></td>
                                <td><%#Eval("status") %></td>


                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>

                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [customizeTourBook]"></asp:SqlDataSource>
                </tbody>
               
            </table>
            </div>
            </div>
          </div>
        </div>
</asp:Content>
