<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="15.Gridview01_LINQ.aspx.cs" Inherits="_15_Gridview01_LINQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- Ajax หน้าจะไม่ Refrresh เปลี่ยนเฉพาะ ที่เร--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> <%-- Ajax --%>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"> <%-- Ajax --%>

        <ContentTemplate> <%-- Ajax --%>
    <%-- Ajax --%>    


    <h2>Grid View LINQ</h2>
    <div class="row">
        <div class="col-lg-8">
 
            <div class="row mb-2">
                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="     Select Category"></asp:Label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>


            <%-- GridView --%>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped table-hover" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductID" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ID" ReadOnly="True">
                    <HeaderStyle CssClass="text-center" />
                    <ItemStyle CssClass="text-center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ProductName" HeaderText="Name">
                    <ControlStyle CssClass="form-control" />
                    <HeaderStyle CssClass="text-center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UnitPrice" DataFormatString="{0:#,##0.00}" HeaderText="Price $">
                    <ControlStyle CssClass="form-control" />
                    <HeaderStyle CssClass="text-center" />
                    <ItemStyle CssClass="text-right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UnitPrice_Baht" DataFormatString="{0:#,##0.00}" HeaderText="Price Baht" ReadOnly="True">
                    <ControlStyle CssClass="form-control" />
                    <HeaderStyle CssClass="text-center" />
                    <ItemStyle CssClass="text-right" />
                    </asp:BoundField>
                    <asp:CommandField ShowEditButton="True">
                    <ControlStyle CssClass="btn btn-primary" />
                    <ItemStyle CssClass="text-center" />
                    </asp:CommandField>
                    <asp:CommandField ShowSelectButton="True">
                    <ControlStyle CssClass="btn btn-success" />
                    <ItemStyle CssClass="text-center" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-lg-4">
            <asp:DetailsView ID="DetailsView1" runat="server" cssclass="table table-bordered table-striped table-hover"></asp:DetailsView>
        </div>
    </div>
            

            <%-- Ajax --%>
        </ContentTemplate> <%-- Ajax --%>

    </asp:UpdatePanel> <%-- Ajax --%>
 
</asp:Content>

