<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="13.Repeater01.aspx.cs" Inherits="_13_Repeater01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Repeater-DataList</h2>
    <div class="row">
        <div class="col-lg-6">
            <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                    <table class="table table-bordered table-striped table-hover">
                        <%--เอาไปปิดที่ bordered ขอบ --%>
                        <%--เอาไปปิดที่ stripe สลับสี --%>
                        <%--เอาไปปิดที่ hover สลับสี --%>
                    <thead>  <%--เอาไปปิดที่ FooterTemplate --%>
                        <tr class="text-center">
                            <th>ID</th>
                            <th>Name</th>
                            <th>Price $</th>
                            <th>Price Baht</th>
                        </tr>
                    </thead>
                    <tbody> <%--เอาไปปิดที่ FooterTemplate --%>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="text-center"><%#Eval("ProductID") %></td>    <%-- ต้องรู้ชื่อ Column --%>
                        <td ><%#Eval("ProductName") %></td>    <%-- ต้องรู้ชื่อ Column --%>
                        <td class="text-right"><%#Eval("UnitPrice","{0:0.00}") %></td>    <%-- ต้องรู้ชื่อ Column --%>
                        <td class="text-right"><%#Eval("UnitPrice_Baht","{0:#,##0.00}") %></td>    <%-- ต้องรู้ชื่อ Column --%>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>    <%--เอาไปปิดที่ FooterTemplate --%>
                    </table>    <%--เอาไปปิดที่ FooterTemplate --%>
                </FooterTemplate>
            </asp:Repeater>
        </div>

        <div class="col-lg-6">
             <%-- DataList : Repeat Column --%>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" CssClass="table" GridLines="Horizontal" RepeatColumns="2" RepeatDirection="Horizontal">

            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="#333333" />

            <ItemTemplate>
                <b>Id : </b><%#Eval("ProductID") %><br />
                <b>Name : </b><%#Eval("ProductName") %><br />
                <b>UnitPrice $ : </b><%#Eval("UnitPrice","{0:0.00}") %><br />
                <b>Price Baht : </b><%#Eval("UnitPrice_Baht","{0:#,##0.00}") %><br />
                <%--<br /> เว้นบรรทัด --%>
            </ItemTemplate>

            <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />

        </asp:DataList>

        </div>
    </div>

</asp:Content>

