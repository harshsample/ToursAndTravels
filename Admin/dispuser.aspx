<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="dispuser.aspx.cs" Inherits="Project.Admin.WebForm37" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Users</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">User</a></li>
                                   <li class="breadcrumb-item"><a href="javascript:void(0);">Display Users</a></li>
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
                        <th>User ID</th>
                        <th>User Name </th>
                        <th>Email </th>
                        <th>Password</th>
                         <th>Mobile No.</th>
                        <th>Country</th>
                        <th>State</th>
                        <th>City</th>
                         <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                      
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("uid") %></td>
                                <td><%#Eval("uname") %></td>
                                <td><%#Eval("email") %></td>

                                <td><%#Eval("pass") %></td>
                                <td><%#Eval("mob") %></td>
                                <td><%#Eval("cname") %></td>
                                <td><%#Eval("sname") %></td>

                                <td><%#Eval("cityname") %></td>
                                 <td colspan="2"><a href='deleteuser.aspx?uid=<%#Eval("uid") %>' class="text-dark"><i class="bi bi-trash-fill"></i></a> 
                                               </td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>



                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT user_mstr.uid, user_mstr.uname, user_mstr.email, user_mstr.pass, user_mstr.mob, user_mstr.country, user_mstr.state, user_mstr.city, user_mstr.otp, user_mstr.verify, country_mstr.cname, state_mstr.sname, city_mstr.cityname FROM user_mstr INNER JOIN city_mstr ON user_mstr.city = city_mstr.cityid INNER JOIN country_mstr ON user_mstr.country = country_mstr.cid INNER JOIN state_mstr ON user_mstr.state = state_mstr.sid"></asp:SqlDataSource>
                </tbody>
               
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>
</asp:Content>
