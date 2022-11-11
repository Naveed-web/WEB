<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage2.master" AutoEventWireup="true" CodeFile="Allottee.aspx.cs" Inherits="admin_Allottee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ MasterType VirtualPath="~/admin/MasterPage2.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagelink" runat="Server">
    <div class="page-header pull-left">
        <div class="page-title">
            Add/Update Allottee
        </div>
    </div>
    <ol class="breadcrumb page-breadcrumb pull-right">
        <li><i class="fa fa-home"></i>&nbsp;<a href="Default.aspx">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
        <li class="hidden"><a href="#">Add/Update Allottee</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
        <li class="active">Add/Update Allottee</li>
    </ol>
    <div class="clearfix">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                            Add/Update Allottee
                        </div>
                        <div class="panel-body pan" style=" background-color:#724a4a";>
                            <form action="#">
                                <div class="form-body pal"  style=" background-color:#724a4a; border-radius: 25px;">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">House No</label>
                                                <asp:DropDownList ID="DrpHouseNo" runat="server" DataSourceID="SqlDataSource1" DataTextField="HouseNo" DataValueField="Id" CssClass="form-control"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" ProviderName="<%$ ConnectionStrings:connectionstring.ProviderName %>" SelectCommand="SELECT [Id], [HouseNo] FROM [House]"></asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Name</label>
                                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <%--<div class="row">
                          <div class="col-md-6">
                                       <div class="form-group">
							  <label class="control-label" for="typeahead">CNIC NO</label>						  
                               <asp:TextBox ID="textbox" runat="server" CssClass="form-control"></asp:TextBox>					
							  </div>
							</div>  
                                                             </div>--%>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Gender</label>
                                                <asp:DropDownList ID="DrpGender" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">ContactNo</label>
                                                <asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">CurrentOwnerShip</label>
                                                <asp:DropDownList ID="DrpCurrentOwnerShip" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Date Of Allotment</label>
                                                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox>
                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="txtDate" PopupButtonID="txtDate" Format="yyyy-MM-dd" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">CNIC NO</label>
                                                <asp:TextBox ID="textbox" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <%--                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Residing</label>
                                                <asp:TextBox ID="txtResiding" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>--%>
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Residing</label>
                                                <asp:DropDownList ID="txtResiding" runat="server" CssClass="form-control">
                                                    <asp:ListItem>No</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form">
                                        <asp:Button ID="btn" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btn_Click" />
                                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--/span-->
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
