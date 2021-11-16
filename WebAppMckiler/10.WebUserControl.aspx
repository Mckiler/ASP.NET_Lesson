<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="10.WebUserControl.aspx.cs" Inherits="_10_WebUserControl" %>

<%@ Register Src="~/9.ProfileControl.ascx" TagPrefix="uc1" TagName="ProfileControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Web User Control</h2>
    <div class="row">
        <div class="col-lg-6">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <uc1:ProfileControl runat="server" ID="ProfileControl" />
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
        </div>
    </div>

</asp:Content>

