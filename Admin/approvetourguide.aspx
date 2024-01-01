<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="approvetourguide.aspx.cs" Inherits="Project.Admin.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Tours Details</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tour Guiders</a></li>
                                   <li class="breadcrumb-item"><a href="javascript:void(0);">Display Tour Guiders</a></li>
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
                        <th>Tour Guider Id</th>
                        <th>Tour Guider Name</th>
                        <th>Email</th>
                        <th>Phone No</th>
                        <th>Password</th>
                         <th>Image</th>
                        
                         <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                      
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("tgid") %></td>
                                <td><%#Eval("tgname") %></td>
                                <td><%#Eval("email") %></td>

                                <td><%#Eval("mobno") %></td>
                                <td><%#Eval("pass") %></td>
                                <td>
                                    <img src='../Guidrs/<%#Eval("image")%>' style="border-radius: 5px; width: 50px" />

                                </td>
                                <td colspan="2"><a href='unapprovetourguide.aspx?tgid=<%#Eval("tgid") %>' class="text-dark">UnApprove</a> |
                                                <a href='deleteapprovetourguide.aspx?tgid=<%#Eval("tgid") %>' class="text-dark"><i class="bi bi-trash-fill"></i></a></td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>





                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tour_guides] WHERE ([status] = @status)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="status" Type="Int32"></asp:Parameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </tbody>
               
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>

    </form>
</asp:Content>
