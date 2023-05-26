<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CaseHistory.aspx.cs" Inherits="DentalClinicWebApp.CaseHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Search Patient History" ForeColor="#0099FF" Font-Size="X-Large" Font-Bold="True"></asp:Label> 
     <br />
    <br />
     <asp:Label ID="Label5" runat="server" Text="Enter Patient Id"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" BorderColor="#3399FF" />
    <br />
    <br />
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="3" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" >  
                <Columns>  
                    <asp:BoundField DataField="FirstName" HeaderText="Patient Name" />  
                    <asp:BoundField DataField="MedicalHistory" HeaderText="Medical History" />  
                    <asp:BoundField DataField="Allergy" HeaderText="Allergy" />  
                    <asp:BoundField DataField="TreatName" HeaderText="Treatment" />  
                    <asp:BoundField DataField="Complaint" HeaderText="Complaint" /> 
                    <asp:BoundField DataField="DrugUse" HeaderText="Drug Use" /> 
                   </Columns>  
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>  
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
