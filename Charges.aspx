<%@ Page Title="Add/Update Charges" Language="C#" MasterPageFile="~/admin/MasterPage2.master" AutoEventWireup="true" CodeFile="Charges.aspx.cs" Inherits="admin_Category" %>

<%@ MasterType VirtualPath="~/admin/MasterPage2.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagelink" runat="Server">
    <div class="page-header pull-left">
        <div class="page-title">
            Add/Update Charges
        </div>
    </div>
    <ol class="breadcrumb page-breadcrumb pull-right">
        <li><i class="fa fa-home"></i>&nbsp;<a href="Default.aspx">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
        <li class="hidden"><a href="#">Add/Update Charges</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
        <li class="active">Add/Update Charges</li>
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
                            Add/Update Charges
                        </div>
                        <div class="panel-body pan" style=" background-color:#3a3030; border-radius: 25px;">
                            <form action="#">
                                <div class="form-body pal">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Head</label>
                                                <asp:TextBox ID="txtHead" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Amount</label>

                                                <asp:TextBox ID="txtAmount" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtAmount" ErrorMessage="Please Enter Only Numbers" ValidationExpression="^\d*\.?\d*$" ValidationGroup="check" ForeColor="Red"></asp:RegularExpressionValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="typeahead">Type</label>
                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                                    <asp:ListItem>IH</asp:ListItem>
                                                    <asp:ListItem>SD</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <%-- <div class="control-group">
							  <label class="control-label" for="typeahead">Type</label>
							  <div class="controls">
                            <asp:DropDownList ID="drpType" runat="server"  CssClass="span5">
                                <asp:ListItem>IH</asp:ListItem>
                                <asp:ListItem>SD</asp:ListItem>
                                  </asp:DropDownList>              																											
							  </div>
							</div>   --%>
                                    <%--         <div class="control-group">
							  <label class="control-label" for="typeahead">Type</label>
							  <div class="controls">
                         <asp:TextBox ID="txtPhoneOffice" required="required" CssClass="span5" runat="server" ></asp:TextBox>																												
							  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhoneOffice" ErrorMessage="Please Enter Only Numbers" ValidationExpression="^\d*\.?\d*$" ValidationGroup="check" ForeColor="Red" ></asp:RegularExpressionValidator>
                                   </div>                                                            
							</div>
                                 <div class="control-group">
							  <label class="control-label" for="typeahead">Fax</label>
							  <div class="controls">
                         <asp:TextBox ID="txtFax"  CssClass="span5" runat="server" ></asp:TextBox>	
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFax" ErrorMessage="Please Enter Only Numbers" ValidationExpression="^\d*\.?\d*$" ValidationGroup="check" ForeColor="Red" ></asp:RegularExpressionValidator>																											
							  </div>
							</div>
                     <div class="control-group">
                     <label class="control-label" for="typeahead">NTN</label>
                     <div class="controls">
                     <asp:TextBox ID="txtNTN" required="required" CssClass="span5" runat="server"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtNTN" ErrorMessage="Please Enter Only Numbers" ValidationExpression="^\d*\.?\d*$" ValidationGroup="check" ForeColor="Red" ></asp:RegularExpressionValidator>
                     </div>
                     </div>
                     <div class="control-group">
                     <label class="control-label" for="typeahead">Discount</label>
                     <div class="controls">
                     <asp:TextBox ID="txtDiscount" required="required" CssClass="span5" runat="server"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtDiscount" ErrorMessage="Please Enter Only Numbers" ValidationExpression="^\d*\.?\d*$" ValidationGroup="check" ForeColor="Red" ></asp:RegularExpressionValidator>
                     </div>
                     </div>
                     <div class="control-group">
                     <label class="control-label" for="typeahead">Days</label>
                     <div class="controls">
                     <asp:TextBox ID="txtdays" required="required" CssClass="span5" runat="server"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtdays" ErrorMessage="Please Enter Only Numbers" ValidationExpression="^\d*\.?\d*$" ValidationGroup="check" ForeColor="Red" ></asp:RegularExpressionValidator>
                     </div>
                     </div>
                     <div class="control-group">
                     <label class="control-label" for="typeahead">Code</label>
                     <div class="controls">
                     <asp:TextBox ID="txtCode" required="required" CssClass="span5" runat="server"></asp:TextBox>
                     </div>
                     </div>--%>
                                    <div class="form">
                                        <asp:Button ID="btn" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btn_Click" ValidationGroup="check" />
                                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"> </asp:Label>
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
