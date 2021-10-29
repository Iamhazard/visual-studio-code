<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evenodd.aspx.cs" Inherits="INDWb.evenodd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter a number<asp:TextBox ID="txtnumber" runat="server" OnTextChanged="txtnumber_TextChanged"></asp:TextBox>
            <asp:Button ID="btnCheck" runat="server" OnClick="btnCheck_Click" Text="Check even or odd" />
        </div>
    </form>
</body>
</html>
