<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="8.ContactUs.aspx.cs" Inherits="_8_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Contact Us</h2>
    <div class="row">

        <div class="col-lg-6">
            <div class="form-group">
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             </div>
             <div class="form-group">
                 <label>Name</label>
                 <asp:textbox id="txtName" runat="server" cssclass="form-control"></asp:textbox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Insert Your Name" ControlToValidate="txtName" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
             </div>
            <div class="form-group">
                <label>Email</label>
                 <asp:textbox id="txtEmail" runat="server" cssclass="form-control"></asp:textbox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Insert Your Email" ControlToValidate="txtEmail" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is wrong format!" ControlToValidate="txtEmail" CssClass="text-danger" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </div>
            <div class="form-group">
                <label>Message</label>
                <asp:TextBox ID="txtMessage" runat="server" cssclass="form-control" Rows="5" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Insert Your Message" ControlToValidate="txtMessage" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <asp:LinkButton ID="LinkButton1" runat="server" cssclass="btn btn-success" OnClick="LinkButton1_Click"><i class="fas fa-comments"></i> Send</asp:LinkButton>
              
        </div>
    </div>
</asp:Content>

