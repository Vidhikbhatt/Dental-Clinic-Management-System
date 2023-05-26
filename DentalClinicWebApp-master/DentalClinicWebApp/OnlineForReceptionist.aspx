<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="OnlineForReceptionist.aspx.cs" Inherits="DentalClinicWebApp.OnlineForReceptionist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            margin-left: 32;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Confirm online Appointment" ForeColor="#3399FF" Height="50px" Font-Size="X-Large" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="OnlineForm" runat="server" AutoGenerateColumns="False" Height="254px" Width="995px" CssClass="auto-style1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText=" Appointment Id" />
            <asp:BoundField DataField="Name" HeaderText=" Appointment Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" />
            <asp:BoundField DataField="AppointmentTime" HeaderText="AppointmentTime" />
            <asp:BoundField DataField="Message" HeaderText="Message" />
            <asp:TemplateField HeaderText="Status">  
                        <ItemTemplate>                          
<%--                            <asp:Button ID="BtnAccept" runat="server" Width="60" Text="Accept" CommandName="AcceptButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" OnClick="ClickAccept" BackColor="Green"/>  --%>
                            <asp:Button ID="BtnAccept" runat="server" CausesValidation="false" CommandName="SendMail"
                    Text="Accept" CommandArgument='<%# Eval("Email") %>' OnClick="ClickAccept" BackColor="Green"/>
                            <asp:Button ID="BtnReject" runat="server" CausesValidation="false" CommandName="SendMail"
                    Text="Reject" CommandArgument='<%# Eval("Email") %>' OnClick="ClickReject" BackColor="Red"/>
                        </ItemTemplate>  
               </asp:TemplateField>  
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

  
    <br />
    <br />
    <br />

  
</asp:Content>
