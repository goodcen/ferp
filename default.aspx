<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Service._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>fERP</title>
    
    <link rel="stylesheet" type="text/css" href="/semantic/dist/semantic.min.css" />
    <style type="text/css">
    body {
      background-color: #DADADA;
    }
    body > .grid {
      height: 100%;
    }
    .image {
      margin-top: -100px;
    }
    .column {
      max-width: 450px;
    }
  </style>
    <script type="text/javascript" src="/js/jquery-3.1.0.min.js"></script>
    <script src="/semantic/dist/semantic.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#txtPWD").keypress(function (event) {
                if (event.which == 13) {
                    fnLogin();
                }
            });
        });

        function fnLogin() {
            if (!validateLogin()) return false;
            else __doPostBack('btnLogin', '');
        }

        function validateLogin() {
            if ($.trim($("#txtID").val()) == "") {
                alert("아이디를 입력하세요.");
                $("#txtID").focus();
                return false;
            }
            if ($.trim($("#txtPWD").val()) == "") {
                alert("비밀번호를 입력하세요.");
                $("#txtPass").focus();
                return false;
            }
            return true;
        }

        function fnSetup() {
            location.href = "http://ferpstorages.blob.core.windows.net/ferp/setup.exe"
        }
    </script>
</head>
<body>
    
<div class="ui middle aligned center aligned grid">
  <div class="column">
    <h2 class="ui teal image header">
      <div class="content">
        Log-in to your account
      </div>
    </h2>
      
    <form id="form1" runat="server" class="ui large form">
      <div class="ui stacked segment">
        <div class="field">
          <div class="ui left icon input">
            <i class="user icon"></i>
            <input type="text" id="txtID" placeholder="ID" runat="server" />
          </div>
        </div>
        <div class="field">
          <div class="ui left icon input">
            <i class="lock icon"></i>
            <input type="password" id="txtPWD" placeholder="Password" runat="server" />
          </div>
        </div>
        <div class="ui fluid large teal submit button" onclick="if(!fnLogin()) return;">Login</div>
        <div style="display:none;"><button id="btnLogin" runat="server" onserverclick="btnLogin_Click"></button></div>
        <div class="ui divider"></div>
        <div class="ui fluid orange button" onclick="fnSetup()">ERP Setup</div>
      </div>

      <div class="ui error message"></div>

    </form>

  </div>
</div>

</body>
</html>
