<%@ Control Language="C#" AutoEventWireup="true" CodeFile="9.ProfileControl.ascx.cs" Inherits="_9_ProfileControl" %>


<div class="form-group">
    <label>Name</label>
    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Insert Your Name" ControlToValidate="txtName" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <label>Email</label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Insert Your Email" ControlToValidate="txtEmail" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is wrong format!" ControlToValidate="txtEmail" CssClass="text-danger" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</div>