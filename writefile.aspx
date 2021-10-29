<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="writefile.aspx.cs" Inherits="INDWb.writefile" %>

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
            <asp:TextBox ID="txtContent" runat="server" Height="244px" TextMode="MultiLine" Width="368px"></asp:TextBox>
            <asp:Button ID="btnWrite" runat="server" Text="Write" OnClick="btnWrite_Click" />
        </div>
    </form>
</body>
</html>
