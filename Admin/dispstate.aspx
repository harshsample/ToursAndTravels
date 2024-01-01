<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="dispstate.aspx.cs" Inherits="Project.Admin.WebForm32" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">State</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    
                                   <li class="breadcrumb-item"><a href="javascript:void(0);">Display Country</a></li>
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
                        <th>State Id</th>
                        <th>Country Name</th>
                       <th>State Name</th>
                        <th>City Name</th>
                         <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                      
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("sid") %></td>
                                <td><%#Eval("cname") %></td>
                                <td><%#Eval("sname") %></td>

                                <td colspan="2"><a href='state.aspx?sid=<%#Eval("sid") %>' class="text-dark"><i class="bi bi-pencil-square"></i></a>|
                                                <a href='deletestate.aspx?sid=<%#Eval("sid") %>' class="text-dark"><i class="bi bi-trash-fill"></i></a></td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>






                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT country_mstr.cname, state_mstr.sid, state_mstr.sname FROM country_mstr INNER JOIN state_mstr ON country_mstr.cid = state_mstr.cid"></asp:SqlDataSource>
                </tbody>
               
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>
</asp:Content>
