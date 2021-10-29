<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readfile.aspx.cs" Inherits="INDWb.readfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:TextBox ID="txtContent" runat="server"></asp:TextBox>
            <asp:Button ID="btnRead" runat="server" Text="Read" OnClick="btnRead_Click" />
        </div>
    </form>
</body>
</html>
