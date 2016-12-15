<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CrafticArtProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<table style="height:100%; width:100%; margin:0px; padding:0px;">
<tr>
<td >
 <asp:GridView class="panel-default text-center " ID="PRODUCTGRIDVIEW" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" GridLines="None" Width="100%">
        
        <Columns >
            <asp:BoundField DataField="PRODUCT_ID" HeaderText="Product Id"/>
            <asp:BoundField DataField="PRODUCT_NAME" HeaderText="Product Name" />
            <asp:BoundField DataField="PRODUCT_CATEGORY" HeaderText="Product Catagori" />
            <asp:BoundField DataField="PRODUCT_DESCRIPTION" HeaderText="Product Description" />
            <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="Product Price" />
            <asp:BoundField DataField="PRODUCT_ORIGIN" HeaderText="Product origin" />

            <asp:TemplateField HeaderText="Product Image">
            <ItemTemplate >
                 <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("PRODUCT_IMAGE") %>' Height="100px" Width="100px" />
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#6d4c41" Font-Bold="True" ForeColor="#fbe9e7" />
        <RowStyle BackColor="#E3EAEB" ForeColor="#ff7043"/>

    </asp:GridView>
</td>
</tr>

<tr>
<td>
    <div class="panel-footer" style="width:100%; text-align:center;">

    <asp:Button  class="btn text-center" ID="Button1" runat="server" Text="Order now" 
        onclick="Button1_Click" style="height: auto; width:auto;" />
    </div>
</td>

</tr>
</table>
</asp:Content>
