<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="dispcontact.aspx.cs" Inherits="Project.Admin.WebForm41" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Contact Users</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">User</a></li>
                                   <li class="breadcrumb-item"><a href="javascript:void(0);">Display Contact Users</a></li>
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
                        <th>Contact Id</th>
                        <th>User Name </th>
                        <th>Email </th>
                      <ht>Discription</ht>
                         <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                      
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("cid") %></td>
                                <td><%#Eval("uname") %></td>
                                <td><%#Eval("email") %></td>



                                <td><%#Eval("discription") %></td>
                                <td colspan="2"><a href='deletecontact.aspx?cid=<%#Eval("cid") %>' class="text-dark"><i class="bi bi-pencil-square"></i></a>|
                                </td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>




                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [contactus_mstr]"></asp:SqlDataSource>
                </tbody>
               
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>
</asp:Content>
