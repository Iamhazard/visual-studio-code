<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exceptionhandeling.aspx.cs" Inherits="INDWb.exceptionhandeling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Value 1
            <asp:TextBox ID="txtv1" runat="server"></asp:TextBox>
            <br />
            value 2<asp:TextBox ID="txtv2" runat="server"></asp:TextBox>
            <asp:Button ID="btnDivide" runat="server" OnClick="btnDivide_Click" Text="Divide" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
