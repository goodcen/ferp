<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Service._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>아이디</td>
                <td><asp:TextBox ID="txtID" runat="server" TabIndex="1"></asp:TextBox></td>
                <td rowspan="2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" TabIndex="3" Height="50" OnClick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><asp:TextBox ID="txtPWD" runat="server" TabIndex="2" TextMode="Password"></asp:TextBox></td>
            </tr>
        </table>
    </div>
    <div>
    </div>
    </form>
</body>
</html>
