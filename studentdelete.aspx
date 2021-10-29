<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentdelete.aspx.cs" Inherits="INDWb.studentdelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <h1>Student Record Delete</h1></p>
        <p>
            Student ID<asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnSave_Click" />
        </p>
        </div>
    </form>
   
</body>
</html>
