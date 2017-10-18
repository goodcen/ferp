<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Webhard.aspx.cs" Inherits="Service.Webhard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function fnDelete(name) {
            if (confirm(name + " 파일을 삭제하시겠습니까?")) {
                document.getElementById('hdnFileName').value = name;
                __doPostBack("<%=btnDelete.UniqueID %>", "");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Panel ID="pnlUpload" runat="server" Visible="false">
            <asp:FileUpload ID="fileupload" runat="server" />
            <asp:Button ID="btnUpload" runat="server" Text="업로드" OnClick="btnUpload_Click" />
        </asp:Panel>
        <br />
        <div>
            <asp:Literal ID="litFiles" runat="server" />
        </div>

        <div style="display:none">
            <asp:HiddenField ID="hdnFileName" runat="server" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" />
        </div>
    </form>
</body>
</html>
