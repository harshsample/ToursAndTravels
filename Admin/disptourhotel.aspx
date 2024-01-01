<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="disptourhotel.aspx.cs" Inherits="Project.Admin.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Hotel Details</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours</a></li>
                                   <li class="breadcrumb-item"><a href="javascript:void(0);">Display Hotel Details</a></li>
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
                        <th>Hotel Detail Id</th>
                        
                        <th>Place Name </th>
                        
                         <th>Days</th>
                         <th>Discription</th>
                        <th>Image</th>
                         <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                      
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("hdid") %></td>

                                <td><%#Eval("placename") %></td>

                                <td><%#Eval("day") %></td>
                                <td><%#Eval("discription") %></td>
                                <td>
                                    <img src='hotelImage/<%#Eval("image")%>' width="100px" style="border-radius: 5px;" />

                                </td>
                                <td colspan="2"><a href='tourhotel.aspx?hdid=<%#Eval("hdid") %>' class="text-dark"><i class="bi bi-pencil-square"></i></a>|
                                                <a href='deletehoteldetail.aspx?hdid=<%#Eval("hdid") %>' class="text-dark"><i class="bi bi-trash-fill"></i></a></td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>



                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT hotel_detail.hdid, hotel_detail.hname, hotel_detail.day, hotel_detail.discription, hotel_detail.image, tourdetails.placename FROM hotel_detail INNER JOIN tourdetails ON hotel_detail.tdid = tourdetails.tdid"></asp:SqlDataSource>
                </tbody>
               
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>
</asp:Content>
