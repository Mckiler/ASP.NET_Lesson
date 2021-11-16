<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="3.Upload.aspx.cs" Inherits="_3_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%-- ถ้าต้องการหลายภาษาใช้ิ Culture UI  --%>

    <h1>Upload</h1>
    <div class="row"> 
        <div class="col-lg-6"> 
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <div class="form-group">
                <label>Select Image</label>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file"/>
            </div>
            <asp:LinkButton ID="uploadLinkedBtn" runat="server" CssClass="btn btn-info" OnClick="uploadLinkedBtn_Click">Upload</asp:LinkButton>
            <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail mt-2" /><%-- Edit  --%>
        </div>
    </div>

</asp:Content>

