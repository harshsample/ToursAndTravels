<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="customizeTour.aspx.cs" Inherits="Project.User.WebForm21" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- start booking -->
    <section class="inner-banner" style="background-image: url(img/banner/sub-page.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-content">
                        <h2>Customize</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="uhome.aspx">Home</a>
                                </li>

                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <section class="section-spacing booking">
        <div class="container">
            <div class="row">
                <div class="booking-bg">
                   
                    <form class="row g-3" runat="server">
                         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="col-sm-12">
                            <h2 class="form-hader">Enter Tour </h2>
                        </div>
                        <div class="col-md-6">
                            <%--<input type="text" class="form-control booking-from" id="inputAddress" placeholder="Enter your name">--%>
                            Name :<asp:TextBox ID="txtunsername" required="this field is required" runat="server" class="form-control booking-from" placeholder="Enter your name"></asp:TextBox>
                        </div>

                        <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                            Tour Name :<asp:TextBox ID="txttourname" required="this field is required" runat="server" placeholder="Enter Tour Name." class="form-control"></asp:TextBox>

                        </div>


                     

                       

                        <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                           Mobile No. <asp:TextBox ID="txtmob" required="this field is required" runat="server" placeholder="Enter Mobile No." class="form-control"></asp:TextBox>

                        </div>
                        
                       
                       
                        <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                 
                            No. of Adult <asp:DropDownList ID="ddlparent" required="this field is required" runat="server" class="choose-option form-select" AutoPostBack="True" >
                                <asp:ListItem>Adult</asp:ListItem>
                               <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            </ContentTemplate>
                             
                        </asp:UpdatePanel>
                       
                        </div>

                            <%--<select id="guest" class="choose-option form-select">
                                
                                <option selected>Guests</option>
                                <option>Guests 1</option>
                                <option>Guests 2</option>
                                <option>Guests 3</option>
                            </select>--%>
                        

                         <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                           Start Date : <asp:TextBox ID="txtdate" runat="server"  required="this field is required"  placeholder="Enter Date." class="form-control" AutoCompleteType="Disabled"></asp:TextBox>


                             <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="txtdate" ID="txtdate_CalendarExtender"></asp:CalendarExtender>
                         </div>

                         <div class="col-md-6">
                             No. of Child :
                            <asp:DropDownList ID="ddlchild" runat="server" required="this field is required" class="choose-option form-select" AutoPostBack="True" >
                                <asp:ListItem>Child</asp:ListItem>
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <%--<select id="guest" class="choose-option form-select">
                                
                                <option selected>Guests</option>
                                <option>Guests 1</option>
                                <option>Guests 2</option>
                                <option>Guests 3</option>
                            </select>--%>
                        </div>
                          <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                           End Date : <asp:TextBox ID="txtenddate" runat="server"  required="this field is required"  placeholder="Enter Date." class="form-control" AutoCompleteType="Disabled"></asp:TextBox>

                              <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="txtenddate" ID="txtenddate_CalendarExtender"></asp:CalendarExtender>
                          </div>

                       
                                <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                           Days <asp:TextBox ID="txtday" required="this field is required" runat="server" placeholder="Enter Days No." class="form-control"></asp:TextBox>

                        </div>
                            

                       
                     
                       
                      
                       <hr />
                        
                        <div class="col-12">
                            <%--<button type="submit" class="booking-bt btn btn-primary">Book Now</button>--%>
                            <asp:Button ID="btn_submit" class="booking-bt btn btn-primary" runat="server" Text="Submit " OnClick="btn_submit_Click" />
                        </div>
                    </form>
                </div>
            </div>
           
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </section>
</asp:Content>
