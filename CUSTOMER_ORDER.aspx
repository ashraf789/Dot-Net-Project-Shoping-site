<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CUSTOMER_ORDER.aspx.cs" Inherits="CrafticArtProject.CUSTOMER_ORDER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="navbar navbar-inverse navbar-fixed" style="background-color:aliceblue; height:500px; width:auto">


    <h3 class="text-center"><strong>Order For Product</strong></h3>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PRODUCT_IDtxt" CssClass="col-md-2 control-label">Product code</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="PRODUCT_IDtxt" CssClass="form-control" />

            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CUSTOMER_NAMEtxt" CssClass="col-md-2 control-label">Customer name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CUSTOMER_NAMEtxt" CssClass="form-control" />

            </div>
        </div>



        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CUSTOMER_ADDRESStxt" CssClass="col-md-2 control-label">Customer address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CUSTOMER_ADDRESStxt" CssClass="form-control" />

            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CUSTOMER_PHONE_NUMBERtxt" CssClass="col-md-2 control-label">Phone number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CUSTOMER_PHONE_NUMBERtxt" CssClass="form-control" />

            </div>
        </div>

                <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ORDER_DATEtxt" CssClass="col-md-2 control-label">Order Date</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ORDER_DATEtxt" CssClass="form-control" />

            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PRODUCT_QUANTITYtxt" CssClass="col-md-2 control-label">Product Quantity</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="PRODUCT_QUANTITYtxt" CssClass="form-control" />

            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PRODUCT_ORIGINtxt" CssClass="col-md-2 control-label">Product Origin</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="PRODUCT_ORIGINtxt" CssClass="form-control" />

            </div>
        </div>
        
        <div class="form-group">
            <div class="col-md-offset-3 col-md-10">
                <asp:Button  ID="Button1" onclick="Button1_Click" runat="server" Text="Confirm order"  CssClass="btn btn-default" />

            </div>
        </div>
    </div>
        </div>
</asp:Content>
