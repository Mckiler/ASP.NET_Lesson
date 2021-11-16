<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="7.Validation.aspx.cs" Inherits="_7_Validation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%-- script dunction ASP --%>
    <script>
        function CheckLength(src, args) {
            if (args.Value.length < 6) {
                args.IsValid = false;
            }
            else {
                args.IsValid = true;
            }
                
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2>Validation</h2>
    <div class="row">
        <div class="col-lg-8">

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />

            <div class="form-group">
                
                <label>Name</label>
                <asp:textbox id="txtName" runat="server" cssclass="form-control"></asp:textbox>
                 <%-- ป้องกันการกรอกช่องว่าง --%>
                <asp:requiredfieldvalidator runat="server" errormessage="Please Insert Full Name" ControlToValidate="txtName" CssClass="text-danger" Display="Dynamic"></asp:requiredfieldvalidator>
            </div>

            <div class="form-group">
                <label>E-mail</label>
                <asp:textbox id="txtEmail" runat="server" cssclass="form-control"></asp:textbox>
                <%-- ป้องกันการกรอกช่องว่าง --%>
                <asp:requiredfieldvalidator runat="server" errormessage="Please Insert Email" controltovalidate="txtEmail" cssclass="text-danger" display="Dynamic"></asp:requiredfieldvalidator>
                
                <%-- ป้องกันเรื่อง Format Email --%>
                <asp:regularexpressionvalidator runat="server" errormessage="Please Insert Correct Email Format" ControlToValidate="txtEmail" CssClass="text-danger" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator>

            </div>

            <div class="form-group">
                <label>Age</label>
                <asp:textbox id="txtAge" runat="server" cssclass="form-control"></asp:textbox>

                 <%-- ค่าอายุ 18-100 --%>
                <asp:rangevalidator runat="server" errormessage="Age is not in range (18-100)." ControlToValidate="txtAge" CssClass="text-danger" Display="Dynamic" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:rangevalidator>
            </div>

            <div class="form-group">
                <label>Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:requiredfieldvalidator runat="server" errormessage="Please Insert Password" controltovalidate="txtPassword" cssclass="text-danger" display="Dynamic"></asp:requiredfieldvalidator>
                <asp:customvalidator runat="server" errormessage="More than 6 letters" ClientValidationFunction="CheckLength" ControlToValidate="txtPassword" CssClass="text-danger" Display="Dynamic"></asp:customvalidator>
            </div>

            <div class="form-group">
                <label>Confirm Password</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                
                <asp:requiredfieldvalidator runat="server" errormessage="Please Confirm Password" controltovalidate="txtConfirmPassword" cssclass="text-danger" display="Dynamic"></asp:requiredfieldvalidator>
                <asp:comparevalidator runat="server" errormessage="Password is not match!!" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" CssClass="text-danger" Display="Dynamic"></asp:comparevalidator>

            </div>

            <div class="form-group">
                <label>Select Image</label>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file"/>
                <asp:CustomValidator ID="CustomValidator1" runat="server" cssClass="text-danger" Display="Dynamic" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>


            </div>

            <asp:LinkButton ID="LinkButton1" runat="server" cssclass="btn btn-primary" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
            
        </div>
        <div class="col-lg-4">
             <%-- แยกส่วนกับอีกการทำงาน ไม่เกี่ยวข้องกัน --%>
            <div class="input-group">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="input-group-append">
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success" ValidationGroup="search">
                        <i class="fas fa-search"></i> Search</asp:LinkButton>
                </span>
            </div>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please search word" ControlToValidate="txtSearch" CssClass="text-danger" Display="Dynamic" ValidationGroup="search"></asp:RequiredFieldValidator>    
    </div>
</asp:Content>

