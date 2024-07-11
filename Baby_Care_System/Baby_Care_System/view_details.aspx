<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="view_details.aspx.cs" Inherits="Baby_Care_System.view_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <asp:DataList ID="DataList1" runat="server" CellPadding="20" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal">
                            
                   
                            <ItemTemplate>
                                <br />
                            <br />
                                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <asp:Image ID="Image1" runat="server" CssClass="position-relative rounded w-100 h-100" style="min-height: 400px;width:400px; border:0;" ImageUrl='<%# Eval("Pro_Image") %>'/>
                                
                            </div>
                        </div>
                        
                            <div class="h-100 d-flex flex-column justify-content-center p-5">
                                
                                <form>
                                    <div class="row g-3">
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                Product Name 
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pro_Name") %>' CssClass="form-control border-0" style="padding:17px;"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                Product Price
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pro_Price") %>' CssClass="form-control border-0" style="padding:17px;"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                Product Description
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pro_Description") %>' CssClass="form-control border-0" style="padding:17px;"></asp:Label>
                                                <br />
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Pro_Id") %>' CommandName="cmd_cart" class="d-block text-center h3 mt-3 mb-4 bg-primary rounded-pill">Add to cart</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        
                      </ItemTemplate>
                </asp:DataList>
                        <br />
                        <br />
                    </div>
                </div>
            </div>
    </div>
</asp:Content>

