<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Baby_Care_System.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
    <!-- Favicon icon -->
        
    <!-- Bootstrap Core CSS -->
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- chartist CSS -->
        <link href="assets/plugins/chartist-js/dist/chartist.min.css" rel="stylesheet"/>
        <link href="assets/plugins/chartist-js/dist/chartist-init.css" rel="stylesheet"/>
        <link href="assets/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet"/>
    <!--This page css - Morris CSS -->
        <link href="../assets/plugins/c3-master/c3.min.css" rel="stylesheet"/>
    <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet"/>
    <!-- You can change the theme colors from here -->
        <link href="css/colors/blue.css" id="theme" rel="stylesheet"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page viafile:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
    <center style="margin-top:50px"><h1>Login </h1></center>
   
     <div class="page-wrapper" style="margin-left:80px; margin-top:50px;margin-right:75px">
            <div class="container-fluid">
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-block">
                                <div class="table-responsive">
                                    
                                    <div class="card" style="width:70%;margin-left:175px">
                            <div class="card-block">
                                <form class="form-horizontal form-material" runat="server">
                                    <div class="form-group">
                                        <label class="col-md-12">Name</label>
                                        <div class="col-md-12">

                                            <asp:TextBox ID="txtnm" runat="server" CssClass="form-control form-control-line" ></asp:TextBox>
                                          
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Password</label>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtpss" runat="server" CssClass="form-control form-control-line" TextMode="Password" ></asp:TextBox>
                                           
                                        </div>
                                    </div>
                                    <center>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="Button1_Click" />
                                            
                                        </div>
                                    </div>
                                        </center>


                                </form>
                            </div>
                        </div>
                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
         </div>
 
</body>
</html>
