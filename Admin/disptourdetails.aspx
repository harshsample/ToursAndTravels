<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="disptourdetails.aspx.cs" Inherits="Project.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Tours Details</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours</a></li>
                                   <li class="breadcrumb-item"><a href="javascript:void(0);">Display Tours Details</a></li>
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
                        <th>Tour Detail Id</th>
                        <th>Tour Type</th>
                        <th>Place Name </th>
                        <th>Image</th>
                         <th>Days</th>
                         <th>Discription</th>
                        <th>Adult Price</th>
                        <th>Children Price</th>
                         <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                      
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("tdid") %></td>
                                <td><%#Eval("tourtype") %></td>
                                <td><%#Eval("placename") %></td>
                                <td>
                                    <img src='image/<%#Eval("image")%>' width="100px" style="border-radius: 5px;" />

                                </td>
                                <td><%#Eval("days") %></td>
                                <td><%#Eval("dispcription") %></td>
                                <td><%#Eval("aprice") %></td>
                                <td><%#Eval("cprice") %></td>

                                <td colspan="2"><a href='tourdetails.aspx?tdid=<%#Eval("tdid") %>' class="text-dark"><i class="bi bi-pencil-square"></i></a> |
                                                <a href='deletetourdetails.aspx?tdid=<%#Eval("tdid") %>' class="text-dark"><i class="bi bi-trash-fill"></i></a></td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>


                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT tourdetails.placename, tourdetails.image, tourdetails.days, tourdetails.dispcription, tourdetails.aprice, tourdetails.cprice, tourtype.tourtype, tourdetails.tdid FROM tourdetails INNER JOIN tourtype ON tourdetails.ttid = tourtype.ttid"></asp:SqlDataSource>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourdetails]"></asp:SqlDataSource>
                </tbody>
               
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>
</asp:Content>
