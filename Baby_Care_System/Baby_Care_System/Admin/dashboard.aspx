﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Baby_Care_System.Admin.dashboard" %>
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
                        <li><a class="waves-effect waves-dark" href="dashboard.aspx" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Dashboard</span></a> </li>
                        <li><a class="waves-effect waves-dark" href="profile.aspx" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">Profile</span></a> </li>
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
                        <li><a class="waves-effect waves-dark" href="table.aspx" aria-expanded="false"><i class="mdi mdi-table"></i><span class="hide-menu">Basic Table</span></a> </li>
                        <li><a class="waves-effect waves-dark" href="admin_login_table.aspx" aria-expanded="false"><i class="mdi mdi-book-open-variant"></i><span class="hide-menu">Registartion</span></a> </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
            <!-- Bottom points-->
            <div class="sidebar-footer">
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="Settings"><i class="ti-settings"></i></a>
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="Email"><i class="mdi mdi-gmail"></i></a>
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="Logout"><i class="mdi mdi-power"></i></a>
            </div>
            <!-- End Bottom points-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
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
                        <h3 class="text-themecolor">Dashboard</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard</li>
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
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="card-block">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="d-flex flex-wrap">
                                            <div>
                                                <h3 class="card-title">Sales Overview</h3>
                                                <h6 class="card-subtitle">Ample Admin Vs Pixel Admin</h6>
                                            </div>
                                            <div class="ml-auto">
                                                <ul class="list-inline">
                                                    <li>
                                                        <h6 class="text-muted text-success"><i class="fa fa-circle font-10 m-r-10 "></i>Ample</h6>
                                                    </li>
                                                    <li>
                                                        <h6 class="text-muted  text-info"><i class="fa fa-circle font-10 m-r-10"></i>Pixel</h6>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="amp-pxl" style="height: 360px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-5">
                        <div class="card">
                            <div class="card-block">
                                <h3 class="card-title">Our Visitors </h3>
                                <h6 class="card-subtitle">Different Devices Used to Visit</h6>
                                <div id="visitor" style="height:290px; width:100%;">
                                </div>
                            </div>
                            <div>
                                <hr class="m-t-0 m-b-0">
                            </div>
                            <div class="card-block text-center ">
                                <ul class="list-inline m-b-0">
                                    <li>
                                        <h6 class="text-muted text-info"><i class="fa fa-circle font-10 m-r-10 "></i>Mobile</h6>
                                    </li>
                                    <li>
                                        <h6 class="text-muted  text-primary"><i class="fa fa-circle font-10 m-r-10"></i>Desktop</h6>
                                    </li>
                                    <li>
                                        <h6 class="text-muted  text-success"><i class="fa fa-circle font-10 m-r-10"></i>Tablet</h6>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row -->
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <!-- Column -->
                        
                        <!-- Column -->
                        <div class="card">
                            <div class="card-block bg-info">
                                <h4 class="text-white card-title">My Contacts</h4>
                                <h6 class="card-subtitle text-white m-b-0 op-5">Checkout my contacts here</h6>
                            </div>
                            <div class="card-block">
                                <div class="message-box contact-box">
                                    <h2 class="add-ct-btn">
                                        <button type="button" class="btn btn-circle btn-lg btn-success waves-effect waves-dark">
                                            +
                                        </button>
                                    </h2>
                                    <div class="message-widget contact-widget">
                                        <!-- Message -->
                                        <a href="#">
                                        <div class="user-img">
                                            <img src="assets/images/users/1.jpg" alt="user" class="img-circle"> <span class="profile-status online pull-right"></span>
                                        </div>
                                        <div class="mail-contnet">
                                            <h5>Pavan kumar</h5>
                                            <span class="mail-desc">info@wrappixel.com</span></div>
                                        </a>
                                        <!-- Message -->
                                        <a href="#">
                                        <div class="user-img">
                                            <img src="assets/images/users/2.jpg" alt="user" class="img-circle"> <span class="profile-status busy pull-right"></span>
                                        </div>
                                        <div class="mail-contnet">
                                            <h5>Sonu Nigam</h5>
                                            <span class="mail-desc">pamela1987@gmail.com</span></div>
                                        </a>
                                        <!-- Message -->
                                        <a href="#">
                                        <div class="user-img">
                                            <span class="round">A</span> <span class="profile-status away pull-right"></span>
                                        </div>
                                        <div class="mail-contnet">
                                            <h5>Arijit Sinh</h5>
                                            <span class="mail-desc">cruise1298.fiplip@gmail.com</span></div>
                                        </a>
                                        <!-- Message -->
                                        <a href="#">
                                        <div class="user-img">
                                            <img src="assets/images/users/4.jpg" alt="user" class="img-circle"> <span class="profile-status offline pull-right"></span>
                                        </div>
                                        <div class="mail-contnet">
                                            <h5>Pavan kumar</h5>
                                            <span class="mail-desc">kat@gmail.com</span></div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                            <img class="card-img-top" src="assets/images/background/profile-bg.jpg" alt="Card image cap">
                            <div class="card-block little-profile text-center">
                                <div class="pro-img">
                                    <asp:Image ID="Image1" runat="server" />
                                    <%--<img src="assets/images/users/4.jpg" alt="user" />--%></div>
                                <h3 class="m-b-0">
                                    <asp:Label ID="labnm" runat="server" Text=""></asp:Label></h3>
                                <p>
                                    <asp:Label ID="labms" runat="server" Text=""></asp:Label></p>
                                <a href="javascript:void(0)" class="m-t-10 waves-effect waves-dark btn btn-primary btn-md btn-rounded">Follow</a>
                                <div class="row text-center m-t-20">
                                    <div class="col-lg-4 col-md-4 m-t-20">
                                        <h3 class="m-b-0 font-light">1099</h3>
                                        <small>Articles</small></div>
                                    <div class="col-lg-4 col-md-4 m-t-20">
                                        <h3 class="m-b-0 font-light">23,469</h3>
                                        <small>Followers</small></div>
                                    <div class="col-lg-4 col-md-4 m-t-20">
                                        <h3 class="m-b-0 font-light">6035</h3>
                                        <small>Following</small></div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs profile-tab" role="tablist">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home" role="tab">Activity</a> </li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#profile" role="tab">Profile</a> </li>
                                
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="home" role="tabpanel">
                                    <div class="card-block">
                                        <div class="profiletimeline">
                                            <div class="sl-item">
                                                <div class="sl-left">
                                                    <img src="assets/images/users/1.jpg" alt="user" class="img-circle">
                                                </div>
                                                <div class="sl-right">
                                                    <div>
                                                        <a href="#" class="link">John Doe</a> <span class="sl-date">5 minutes ago</span>
                                                        <p>
                                                            assign a new task <a href="#">Design weblayout</a></p>
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-6 m-b-20">
                                                                <img src="assets/images/big/img1.jpg" alt="user" class="img-responsive radius"></div>
                                                            <div class="col-lg-3 col-md-6 m-b-20">
                                                                <img src="assets/images/big/img2.jpg" alt="user" class="img-responsive radius"></div>
                                                            <div class="col-lg-3 col-md-6 m-b-20">
                                                                <img src="assets/images/big/img3.jpg" alt="user" class="img-responsive radius"></div>
                                                            <div class="col-lg-3 col-md-6 m-b-20">
                                                                <img src="assets/images/big/img4.jpg" alt="user" class="img-responsive radius"></div>
                                                        </div>
                                                        <div class="like-comm">
                                                            <a href="javascript:void(0)" class="link m-r-10">2 comment</a> <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-heart text-danger"></i>5 Love</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="sl-item">
                                                <div class="sl-left">
                                                    <img src="assets/images/users/2.jpg" alt="user" class="img-circle">
                                                </div>
                                                <div class="sl-right">
                                                    <div>
                                                        <a href="#" class="link">John Doe</a> <span class="sl-date">5 minutes ago</span>
                                                        <div class="m-t-20 row">
                                                            <div class="col-md-3 col-xs-12">
                                                                <img src="assets/images/big/img1.jpg" alt="user" class="img-responsive radius"></div>
                                                            <div class="col-md-9 col-xs-12">
                                                                <p>
                                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.
                                                                </p>
                                                                <a href="#" class="btn btn-success">Design weblayout</a></div>
                                                        </div>
                                                        <div class="like-comm m-t-20">
                                                            <a href="javascript:void(0)" class="link m-r-10">2 comment</a> <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-heart text-danger"></i>5 Love</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="sl-item">
                                                <div class="sl-left">
                                                    <img src="assets/images/users/3.jpg" alt="user" class="img-circle">
                                                </div>
                                                <div class="sl-right">
                                                    <div>
                                                        <a href="#" class="link">John Doe</a> <span class="sl-date">5 minutes ago</span>
                                                        <p class="m-t-10">
                                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper
                                                        </p>
                                                    </div>
                                                    <div class="like-comm m-t-20">
                                                        <a href="javascript:void(0)" class="link m-r-10">2 comment</a> <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-heart text-danger"></i>5 Love</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="sl-item">
                                                <div class="sl-left">
                                                    <img src="assets/images/users/4.jpg" alt="user" class="img-circle">
                                                </div>
                                                <div class="sl-right">
                                                    <div>
                                                        <a href="#" class="link">John Doe</a> <span class="sl-date">5 minutes ago</span>
                                                        <blockquote class="m-t-10">
                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                                        </blockquote>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--second tab-->
                                <div class="tab-pane" id="profile" role="tabpanel">
                                    <div class="card-block">
                                        <div class="row">
                                            <div class="col-md-3 col-xs-6 b-r">
                                                <strong>Full Name</strong>
                                                <br>
                                                <p class="text-muted">
                                                    <asp:Label ID="labnam" runat="server" Text=""></asp:Label></p>
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r">
                                                <strong>Mobile</strong>
                                                <br>
                                                <p class="text-muted">
                                                    <asp:Label ID="labmb" runat="server" Text=""></asp:Label></p>
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r">
                                                <strong>Email</strong>
                                                <br>
                                                <p class="text-muted">
                                                    <asp:Label ID="labem" runat="server" Text=""></asp:Label></p>
                                            </div>
                                            <div class="col-md-3 col-xs-6">
                                                <strong>Location</strong>
                                                <br>
                                                <p class="text-muted">
                                                    <asp:Label ID="labcou" runat="server" Text=""></asp:Label></p>
                                            </div>
                                        </div>
                                        <hr>
                                        <p class="m-t-30">
                                            Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
                                        <p>
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries
                                        </p>
                                        <p>
                                            It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                        <h4 class="font-medium m-t-30">Skill Set</h4>
                                        <hr>
                                        <h5 class="m-t-30">Wordpress <span class="pull-right">80%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%; height:6px;">
                                                <span class="sr-only">50% Complete</span>
                                            </div>
                                        </div>
                                        <h5 class="m-t-30">HTML 5 <span class="pull-right">90%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%; height:6px;">
                                                <span class="sr-only">50% Complete</span>
                                            </div>
                                        </div>
                                        <h5 class="m-t-30">jQuery <span class="pull-right">50%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%; height:6px;">
                                                <span class="sr-only">50% Complete</span>
                                            </div>
                                        </div>
                                        <h5 class="m-t-30">Photoshop <span class="pull-right">70%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%; height:6px;">
                                                <span class="sr-only">50% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="settings" role="tabpanel">
                                    
                                            
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




