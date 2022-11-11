<%@ Page Title="Add/Update House" Language="C#" MasterPageFile="MasterPage2.master" AutoEventWireup="true" CodeFile="House.aspx.cs" Inherits="admin_Category" %>

<%@ MasterType VirtualPath="~/admin/MasterPage2.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagelink" runat="Server">
    <div class="page-header pull-left">
        <div class="page-title">
            Add/Update  House
        </div>
    </div>
    <ol class="breadcrumb page-breadcrumb pull-right">
        <li><i class="fa fa-home"></i>&nbsp;<a href="Default.aspx">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
        <li class="hidden"><a href="#">Add/Update House</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
        <li class="active">Add/Update House</li>
    </ol>
    <div class="clearfix">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="row mbl">
        <div class="col-lg-12">
            <div class="col-md-12">
                <div id="area-chart-spline" style="width: 100%; height: 300px; display: none;"> 
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            Add/Update House
                        </div>
                        <div class="panel-body pan" style=" background-color:#724a4a; border-radius: 25px;">
                            <form action="#">
                                <div class="form-body pal">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">House No</label>
                                                <asp:TextBox ID="txtHouseNo" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Address</label>
                                                <asp:TextBox ID="txtAdress" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Street</label>
                                                <asp:TextBox ID="txtStreet" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Type</label>
                                                <asp:DropDownList ID="drpType" runat="server" CssClass="form-control">
                                                    <asp:ListItem>IH</asp:ListItem>
                                                    <asp:ListItem>SD</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form">
                                        <asp:Button ID="btn" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btn_Click" />
                                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"> </asp:Label>
                                    </div>
                            </form>

                        </div>
                    </div>
                    <!--/span-->
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

