<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Baby_Care_System.Admin.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
                 <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li> <a class="waves-effect waves-dark" href="dashboard.aspx" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Dashboard</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="profile.aspx" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">Profile</span></a>
                        </li>
                        <li>
                            <a class="waves-effect waves-dark" href="#" aria-expanded="false" data-toggle="collapse"><i class="mdi mdi-emoticon"></i><span class="hide-menu">Insert Table</span>
                            </a>
                            <ul > 
                                <li>
                                    <a href="product_table.aspx">Product Table</a>
                                </li>
                                <li>
                                    <a href="class_table.aspx">Classes Table</a>
                                </li>
                                <li>
                                    <a href="catagory.aspx">Catagory Table</a>
                                </li>
                                
                                
                            </ul>


                        </li>
                        <li> <a class="waves-effect waves-dark" href="table.aspx" aria-expanded="false"><i class="mdi mdi-table"></i><span class="hide-menu">Basic Table</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="admin_login_table.aspx" aria-expanded="false"><i class="mdi mdi-book-open-variant"></i><span class="hide-menu">Registartion</span></a>
                        </li>
                    </ul>
                    
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
            <!-- Bottom points-->
            <div class="sidebar-footer">
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="Settings"><i class="ti-settings"></i></a>
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="Email"><i class="mdi mdi-gmail"></i></a>
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="Logout"><i class="mdi mdi-power"></i></a> </div>
            <!-- End Bottom points-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 col-8 align-self-center">
                        <h3 class="text-themecolor m-b-0 m-t-0">Profile</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Profile</li>
                        </ol>
                    </div>
                    
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-block">
                                <center class="m-t-30">
                                    <asp:Image ID="Image1" runat="server"  CssClass="img-circle" width="150"  />
                                    <%--<img src="assets/images/users/5.jpg" class="img-circle" width="150" />--%>
                                    <h4 class="card-title m-t-10">
                                        <asp:Label ID="labnm" runat="server" Text="Label"></asp:Label></h4>
                                    <h6 class="card-subtitle">
                                        <asp:Label ID="labmss" runat="server" Text="Label"></asp:Label></h6>
                                    <div class="row text-center justify-content-md-center">
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-people"></i> <font class="font-medium">254</font></a></div>
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-picture"></i> <font class="font-medium">54</font></a></div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-block">
                                <form class="form-horizontal form-material">
                                    <div class="form-group">
                                        <label class="col-md-12">Full Name</label>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtnm" runat="server" CssClass="form-control form-control-line" ReadOnly="True" ></asp:TextBox>
                                           
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Email</label>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtem" runat="server" CssClass="form-control form-control-line" ReadOnly="True" ></asp:TextBox>
                                            <%--<input type="email" placeholder="johnathan@admin.com" class="form-control form-control-line" name="example-email" id="example-email">--%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Password</label>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtpss" runat="server" CssClass="form-control form-control-line" ReadOnly="True"  ></asp:TextBox>
                                            <%--<input type="password" value="password" class="form-control form-control-line">--%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Phone No</label>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtpn" runat="server" CssClass="form-control form-control-line" ReadOnly="True" ></asp:TextBox>
                                            <%--<input type="text" placeholder="123 456 7890" class="form-control form-control-line">--%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Message</label>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtms" runat="server" CssClass="form-control form-control-line" ReadOnly="True" ></asp:TextBox>
                                            <%--<textarea rows="5" class="form-control form-control-line"></textarea>--%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Select Country</label>
                                        <div class="col-sm-12">

                                            <%--<select class="form-control form-control-line">--%>
                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control form-control-line">
                                                    <asp:ListItem>India</asp:ListItem>
                                                    <asp:ListItem>Usa</asp:ListItem>
                                                    <asp:ListItem>Canada</asp:ListItem>
                                                    <asp:ListItem>Thailand</asp:ListItem>
                                                </asp:DropDownList>
                                                <%--<option>London</option>
                                                <option>India</option>
                                                <option>Usa</option>
                                                <option>Canada</option>
                                                <option>Thailand</option>
                                            </select>--%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <asp:Button ID="Button1" runat="server" Text="Update Profile" CssClass="btn btn-success" OnClick="Button1_Click1" />
                                            
                                           
                                            <%--<button class="btn btn-success">Update Profile</button>--%>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
                 </div>
</asp:Content>

