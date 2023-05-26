<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ExistingPatientDetail.aspx.cs" Inherits="DentalClinicWebApp.ExistingPatientDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <asp:Label ID="Label4" runat="server" ForeColor="#0099FF" Text="Existing Patient information" Height="50px" Font-Size="X-Large" Font-Bold="True"></asp:Label>

    <br />
    <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="PhoneNo"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPhn" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>
&nbsp;<br />
    <br />
    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" BorderColor="#3399FF"/>
    <br />
    <br />
    <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View Data" BorderColor="#3399FF"/>

    &nbsp;
    <br />
&nbsp;
    <br />
    <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit" BorderColor="#3399FF" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Label ID="Label5" runat="server" ForeColor="#0099FF" Text="View Patient Records" Height="40px" Font-Size="Large" Font-Bold="true"></asp:Label>

         <br />

 <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">  
                <Columns>  
                    <asp:BoundField DataField="PatientId" HeaderText="Patient Id" />  
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />  
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />  
                    <asp:BoundField DataField="DOB" HeaderText="Date of Birth" />  
                    <asp:BoundField DataField="Age" HeaderText="Age" /> 
                    <asp:BoundField DataField="Gender" HeaderText="Gender" /> 
                    <asp:BoundField DataField="PhoneNo" HeaderText="Phone Number" /> 
                    <asp:BoundField DataField="EmailId" HeaderText="Email Id" /> 
                    <asp:BoundField DataField="Address" HeaderText="Address" /> 
                    <asp:BoundField DataField="MedicalHistory" HeaderText="Medical History" /> 
                    <asp:BoundField DataField="Allergy" HeaderText="Allergy" /> 
                    <asp:BoundField DataField="PurposeToVisit" HeaderText="Purpose To Visit" /> 
                    
                    <asp:TemplateField>  
                        <ItemTemplate>  
                            <asp:Button ID="btnEdit" runat="server" Width="60" Text="Edit" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                </Columns>  

                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
                <PagerStyle BorderStyle="Solid" BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>  
 
 
    <br />
</asp:Content>
