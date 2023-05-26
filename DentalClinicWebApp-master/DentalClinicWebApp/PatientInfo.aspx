<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PatientInfo.aspx.cs" Inherits="DentalClinicWebApp.PatientInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
     <%--<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>--%>
    <style type="text/css">
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <div style="text-align:center">
        <asp:Label ID="Label1" runat="server" ForeColor="#0099FF" Text="Patient Information Form" Height="50px" Font-Size="X-Large" Font-Bold="True"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;Patient id&nbsp;&nbsp;
    <asp:TextBox ID="txtpId" runat="server" Enabled="False"></asp:TextBox>
       

&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First name&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please input alphabets."  ForeColor="Red" ControlToValidate="txtfname" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>&nbsp;&nbsp;&nbsp; Last name&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="please input alphabets."  ForeColor="Red" ControlToValidate="txtlname" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
    <br />
    <br />

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DOB
<asp:TextBox ID="txtdob" runat="server" TextMode="Date"></asp:TextBox>
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAge" runat="server" Width="94px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age cannot be blank" ControlToValidate="txtAge" ForeColor="Red"  MaximumValue="110" MinimumValue="1" Type="Integer" BackColor="White"></asp:RequiredFieldValidator>  
    &nbsp;&nbsp;<br />

    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  
   Gender&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender"/>
      &nbsp;&nbsp;&nbsp;
      <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender"/>
    &nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton3" runat="server"  Text="Other" GroupName="gender"/>

&nbsp;&nbsp;&nbsp;
    


&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone no&nbsp;
    <asp:TextBox ID="txtPhn" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhn" ErrorMessage="Invalid Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
&nbsp;Email-id&nbsp;
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtAddress" runat="server" Height="68px" Width="504px"></asp:TextBox>
    <br />


    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Medical History&nbsp;
    <asp:TextBox ID="txtMedicalH" runat="server"></asp:TextBox>
    <br />
    <br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Allergy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAllergy" runat="server"></asp:TextBox>
    &nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Purpose to visit&nbsp;
    <asp:TextBox ID="txtPTV" runat="server"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BorderColor="#3399FF" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpdate" runat="server" BorderColor="#3399FF" Text="Update" OnClick="btnUpdate_Click" />       
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
               <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" BorderColor="#3399FF" /> 
</div>
</asp:Content>
