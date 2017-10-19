<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Webhard.aspx.cs" Inherits="Service.Webhard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title></title>
    
    <link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css" />

    <style type="text/css">
        a, a:visited, a:hover, a:active {
            text-decoration:none;
        }
        .wrap {
            width:100%;
            max-width:500px;
            margin:20px;
        }

        .table.ui thead th { text-align:center; }

        .upload { width:85%; max-width:400px; height:34px; }
    </style>

    <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
    <script src="semantic/dist/semantic.min.js"></script>

    <script type="text/javascript">
        function fnDelete(name) {
            if (confirm(name + " 파일을 삭제하시겠습니까?")) {
                document.getElementById('hdnFileName').value = name;
                __doPostBack("<%=btnDelete.UniqueID %>", "");
            }
        }

        function fnCheckUpload() {
            if (document.getElementById('fileupload').value == '') {
                alert('업로드할 파일을 선택하세요.');
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="wrap">
            <h2 class="ui header">
              <i class="attach icon"></i>
              <div class="content">
                <asp:Literal ID="litTitle" runat="server" />
              </div>
            </h2>

            <asp:Panel ID="pnlUpload" runat="server" Visible="false" style="margin-bottom:15px;">
                <asp:FileUpload ID="fileupload" runat="server" CssClass="upload" />
                <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" OnClientClick="return fnCheckUpload();" CssClass="ui orange button" Text="업로드" />
            </asp:Panel>
            
            <asp:Panel ID="pnlFiles" runat="server">
                <table class="ui celled table">
                    <thead>
                        <tr>
                            <th>파일명</th>
                            <asp:Literal ID="litHead" runat="server" />
                        </tr>
                    </thead>
                    <tbody id="tbody">
                        <asp:Literal ID="litFiles" runat="server" />
                    </tbody>
                </table>
            </asp:Panel>
        </div>

        <div style="display:none">
            <asp:HiddenField ID="hdnFileName" runat="server" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" />
        </div>
    </form>
</body>
</html>
