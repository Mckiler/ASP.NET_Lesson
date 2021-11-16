<%@ Page Title="Multiview" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="5.Multiview01.aspx.cs" Inherits="_5_Multiview01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Multiview</h2>
    <div class="row"> 
        <div class="col-lg-6"> 
           
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <div class="form-group">
                        <label>Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>E-mail</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:LinkButton ID="btnLinkedNext1" runat="server" CssClass="btn btn-primary" OnClick="btnLinkedNext1_Click">Next</asp:LinkButton>
                </asp:View>

                <asp:View ID="View2" runat="server">
                    <div class="form-group">
                        <label>Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" style="resize:none"></asp:TextBox>
                    </div>
                    <asp:LinkButton ID="btnLinkedBack2" runat="server" CssClass="btn btn-primary" OnClick="btnLinkedBack2_Click" >Back</asp:LinkButton>
                    <asp:LinkButton ID="btnLinkedNext2" runat="server" CssClass="btn btn-success" OnClick="btnLinkedNext2_Click" ><i class="fas fa-check"></i>Submit</asp:LinkButton>
                </asp:View>

                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:LinkButton ID="btnLinkedBack3" runat="server" CssClass="btn btn-primary" OnClick="btnLinkedBack3_Click">Back</asp:LinkButton>
                </asp:View>

            </asp:MultiView>
        </div>
    </div>
</asp:Content>

