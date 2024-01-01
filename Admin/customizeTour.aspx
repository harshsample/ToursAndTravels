<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="customizeTour.aspx.cs" Inherits="Project.Admin.WebForm47" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Customize Tours</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours</a></li>
                                   <li class="breadcrumb-item"><a href="javascript:void(0);"> Details</a></li>
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
                        <th>Customized Tour Id</th>
                        <th>User Name</th>
                        <th>Place Name </th>
                        <th>Parent</th>
                         <th>Child</th>
                         <th>start date</th>
                        <th>End Date</th>
                        <th>Total Days</th>
                        <th>Status</th>
                        <th>Image</th>
                        <th>Parent Price</th>
                        <th>Child Price</th>
                        <th>User Id</th>
                         <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                      
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("cid") %></td>
                                <td><%#Eval("uname") %></td>
                                <td><%#Eval("tname") %></td>
                                <td><%#Eval("parent") %></td>
                                <td><%#Eval("child") %></td>
                                <td><%#Eval("sdate") %></td>
                                <td><%#Eval("edate") %></td>
                                <td><%#Eval("days") %></td>
                                <td><%#Eval("status") %></td>
                                <td>
                                    <img src='image/<%#Eval("image")%>' width="100px" style="border-radius: 5px;" />

                                </td>
                                <td><%#Eval("pprice") %></td>
                                <td><%#Eval("cprice") %></td>
                                <td><%#Eval("uid") %></td>


                                  <td colspan="2"><a href='dispcustomizedTour.aspx?cid=<%#Eval("cid") %>' class="text-dark"><i class="bi bi-eye-fill"></i></a> |
                                                    <a href='approvecustomizedTour.aspx?cid=<%#Eval("cid") %>' class="text-dark"> <i class="bi bi-check2-circle"></i></a>
                                               </td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>



                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [customize_tour]"></asp:SqlDataSource>
                </tbody>
               
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>
</asp:Content>
