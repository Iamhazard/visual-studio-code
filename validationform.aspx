<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validationform.aspx.cs" Inherits="INDWb.validationform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <p>
            USer Name<asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Please Enter User Name!"></asp:RequiredFieldValidator>
        </p>
        <p>
            Password<asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Confirm password<asp:TextBox ID="txtconfirmpassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtconfirmpassword" ErrorMessage="Please Enter Confirm Password"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="Password and confirm password not match"></asp:CompareValidator>
        </p>
        <p>
            Age<asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtage" ErrorMessage="Enter Age"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="Please enter between 0 and 100" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        </p>
        <p>
            City Pincode<asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpincode" ErrorMessage="Please Enter Pincode"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpincode" ErrorMessage="Please Enter 4 digts pincode" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
