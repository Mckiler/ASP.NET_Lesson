<%@ Page Title="Wizard" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="6.Wizard01.aspx.cs" Inherits="_6_Wizard01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <%-- สร้าง Function CheckLength --%>
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

    <h2>Wizard</h2>
    <div class="row"> 
        <div class="col-lg-6"> 
          
                <%-- Wizard มาก่อนอย่างอื่นเลยต้องกำหนดเอง --%>
                <asp:Wizard ID="Wizard1" runat="server" width="100%" OnFinishButtonClick="Wizard1_FinishButtonClick" DisplaySideBar="False" FinishCompleteButtonText="Submit" FinishPreviousButtonText="Back">
                <FinishCompleteButtonStyle CssClass="btn btn-success" />
                <FinishPreviousButtonStyle CssClass="btn btn-primary" />
                <NavigationStyle HorizontalAlign="Left" />
                <StartNextButtonStyle CssClass="btn btn-primary" />
                
                    <WizardSteps>
                        <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                            <div class="form-group">
                                <label>Name</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>E-mail</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </asp:WizardStep>
                        <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                            <div class="form-group">
                                <label>Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" style="resize:none"></asp:TextBox>
                            </div>
                        </asp:WizardStep>
                        <asp:WizardStep runat="server" StepType="Complete" Title="Step 3">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </asp:WizardStep>
                    </WizardSteps>
                </asp:Wizard>
           </div>
        </div>
</asp:Content>

