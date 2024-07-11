<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="product_table.aspx.cs" Inherits="Baby_Care_System.Admin.product_table" %>
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
                        <h3 class="text-themecolor m-b-0 m-t-0">Product Table</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Product Table</li>
                        </ol>
                    </div>
                    
                </div>
                
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Product Table</h4>
                                
                                <div class="table-responsive">
                                    
                                    <div class="card">
                            <div class="card-block">
                                <form class="form-horizontal form-material">
                                    <div class="form-group">
                                        <label class="col-md-12">Category Name</label>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="catlist" runat="server" CssClass="form-control form-control-line" OnSelectedIndexChanged="catlist_SelectedIndexChanged"></asp:DropDownList>
                                        </div>
                                    </div>
                                    
<div class="form-group">
                                        <label class="col-md-12">Product Name</label>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtnm" runat="server" CssClass="form-control form-control-line" ></asp:TextBox>
                                          
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Price</label>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtpri" runat="server" CssClass="form-control form-control-line" ></asp:TextBox>
                                           
                                        </div>
                                    </div>
                                  
                                    
                                    
                                    <div class="form-group">
                                        <label class="col-md-12">Image</label>
                                        <div class="col-md-12">
                                            <asp:FileUpload ID="img" runat="server" CssClass="form-control form-control-line" />
                                           
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Product Description</label>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtdes" runat="server" CssClass="form-control form-control-line" TextMode="MultiLine" ></asp:TextBox>
                                           
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="Button1_Click" />
                                            
                                            <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn btn-success" OnClick="Button2_Click" style="height: 26px" />
                                            
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
</div>
</asp:Content>

