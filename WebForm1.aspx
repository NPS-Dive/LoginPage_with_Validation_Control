<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Session23_ValidationControl.WebForm1" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Contents/Css/CssLogin.css" rel="stylesheet" type="text/css" />
    <title>Validation Control </title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="divForm">
            <strong>Name:</strong>
            <br />
            <input type="text" runat="server" id="txtName" placeholder="Name" />
            <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
            <br />
            <strong>Last Name:</strong>
            <br />
            <input type="text" runat="server" id="txtFamily" placeholder="Last Name" />
            <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidatorFamily" runat="server" ErrorMessage="Please Enter Last Name" ControlToValidate="txtFamily">*</asp:RequiredFieldValidator>
            <br />
            <strong>Password:</strong>
            <br />
            <input type="password" runat="server" id="txtPass1" placeholder="Password" />
            <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidatorPass1" runat="server" ErrorMessage="Enter password" ControlToValidate="txtPass1">*</asp:RequiredFieldValidator>
            <br />
            <strong>Retype Password:</strong>
            <br />
            <input type="password" runat="server" id="txtpass2" placeholder="retype Password" />
            <asp:CompareValidator CssClass="validators" ID="CompareValidatorPass2" runat="server" ErrorMessage="Please retype the correct password" ControlToValidate="txtpass2" ControlToCompare="txtPass1">*</asp:CompareValidator>
            <br />
            <strong>Email:</strong>
            <br />
            <input type="email" runat="server" id="txtEmail" placeholder="info@ipbses.com" />
            <asp:RegularExpressionValidator CssClass="validators" ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Type the Correct Email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" >*</asp:RegularExpressionValidator>
            <br />
            <hr />
            <asp:Button ID="btnSend" runat="server" Text="Submit" Height="38px" Width="100px" Font-Names="comic sans MS" Font-Size="Large"/>
            <br /><br />
            <asp:ValidationSummary CssClass="validators" ID="ValidationSummary1" runat="server" DisplayMode="List" />
        </div>
    </form>
</body>
</html>
