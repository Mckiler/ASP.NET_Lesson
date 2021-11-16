<%@ Page Title="Panel" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="4.Panel01.aspx.cs" Inherits="_4_Panel01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Pane</h2>
    <div class="row"> 
        <div class="col-lg-6"> 
            <asp:Panel ID="Panel1" runat="server" Visible="True">
                <div class="form-group">
                    <label>Name</label>
                    <asp:textbox id="txtName" runat="server" cssclass="form-control"></asp:textbox>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <asp:textbox id="txtEmail" runat="server" cssclass="form-control"></asp:textbox>
                </div>
                <asp:LinkButton ID="btnLinkedNext1" runat="server" CssClass="btn btn-primary" OnClick="btnLinkedNext1_Click">Next</asp:LinkButton>
        
            </asp:Panel>
             
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <div class="form-group">
                    <label>Address</label>
                    <asp:textbox id="txtAddress" runat="server" cssclass="form-control" TextMode="MultiLine" Rows="5" style="resize:none"></asp:textbox>
                
                    <asp:LinkButton ID="btnLinkedBack2" runat="server" CssClass="btn btn-primary" OnClick="btnLinkedBack2_Click">Back</asp:LinkButton>
                    <asp:LinkButton ID="btnLinkedNext2" runat="server" CssClass="btn btn-success" OnClick="btnLinkedNext2_Click"><i class="fas fa-check"></i>Submit</asp:LinkButton>
                </div>
          
            </asp:Panel>
            
            <asp:Panel ID="Panel3" runat="server" Visible="False">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
            
        </div>
    </div>
</asp:Content>

