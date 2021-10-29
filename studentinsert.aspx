<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentinsert.aspx.cs" Inherits="INDWb.studentinsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <br />
            <h1>Student Record Insert</h1></p>
        <p>
            Student ID<asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
        </p>
        <p>
            Student Name<asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
        </p>
        <p>
            Address<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        </p>
        <p>
            Phone<asp:TextBox ID="txtPhone" runat="server" OnTextChanged="txtPhone_TextChanged"></asp:TextBox>
        </p>
        <p>
            Email<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </p>
        <p>
            Gender<asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
        </p>
        <p>
            Class<asp:TextBox ID="txtClass" runat="server"></asp:TextBox>
        </p>
        <p>
            DOB<asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </p>
        <p>
            &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
