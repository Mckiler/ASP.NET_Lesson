<%@ Page Title=" Web Server Control" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="2.WebServerControl.aspx.cs" Inherits="_2_WebServerControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Web Server Control</h1>
    <div class="row">
        <%-- ฝั่งซ้าย Input --%>
        <div class="col-lg-6">
            <div class="form-group">
                <label>Name</label>
                <asp:textbox id="txtName" runat="server" cssclass="form-control"></asp:textbox>
            </div>
            <div class="form-group">
                <label>Password</label>
                <asp:textbox id="txtPassword" runat="server" cssclass="form-control" TextMode="Password"></asp:textbox>
            </div>
            <div class="form-group">
                <label>Address</label>
                <asp:textbox id="txtAddress" runat="server" cssclass="form-control" TextMode="MultiLine" Rows ="5"></asp:textbox>
            </div>

            <%-- Drop Down List --%>
            <div class="form-group">
                 <label>Province</label>
                <asp:DropDownList ID="ddlProvince" runat="server" CssClass="form-control" AutoPostBack="True">
                    <asp:ListItem>Please Select Province</asp:ListItem>
                 </asp:DropDownList>
            </div>

             <%-- Check Box List --%>
            <div class="form-group">
                 <label>Hobbies</label>
                <asp:CheckBoxList ID="cblHobby" runat="server" AutoPostBack="True"></asp:CheckBoxList>
            </div>
            
            <%-- Radio button List --%>
            <%-- AutoPostBack="True" Auto สิ่งที่จะทำต่อไป --%>
            <div class="form-group">
                <label>Gender</label>
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Button1_Click" AutoPostBack="True">
                    <asp:ListItem Selected="True" Value="Male">Male (M)</asp:ListItem>
                    <asp:ListItem Value="Female">Female (F)</asp:ListItem>
                </asp:RadioButtonList>
            </div>

             <%-- List Box --%>
            <div class="form-group">
                <label>Social</label>
                <asp:ListBox ID="lbSocial" runat="server" CssClass="form-control" SelectionMode="Multiple" Rows="3"></asp:ListBox>
            </div>

             <%-- Button --%> 
            <%-- https://getbootstrap.com/docs/4.0/components/buttons/ --%> 
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button1_Click" />

            <%-- link button ใช้ประโยชน์จาก Fontawesome ได้--%>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click"><i class="fas fa-check"></i>Submit</asp:LinkButton>
        </div>

        <%-- ฝั่งขวา Output --%>
        <div class="col-lg-6">
            <asp:label id="Label1" runat="server"></asp:label>
        </div>

    </div>

</asp:Content>

