<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="Login_Page.home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: Arial;
            font-size: xx-large;
            font-weight: 900;
            color: #C0C0C0;
        }
        .auto-style1 {
            text-align: center;
        }
        .newStyle2 {
            font-size: xx-large;
            font-weight: 600;
        }
        .auto-style2 {
            font-size: x-large;
            font-weight: 600;
        }
        .auto-style3 {
            border-style: solid;
            border-color: inherit;
            border-width: medium;
            text-align: center;
            height: 194px;
            margin-top: 58px;
            }
        .newStyle3 {
            background-color: #3d305c
        }
        .auto-style4 {
            color: #FFFF99;
        }
    </style>
</head>
<body class="newStyle3">
    <form id="form1" runat="server">
        <div class="auto-style1">
        <span class="newStyle1">Welcome to SNTI Trainee Programme<br />
            </span>
        </div>
        <div class="auto-style3">
            <span class="auto-style2">
            <br />
            <span class="auto-style4">You wish to join as</span><br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Student" Width="141px" OnClick="Button1_Click1" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Admin" Width="140px" OnClick="Button2_Click" />
            <br />
            <br />
            </span>
        </div>
    </form>
</body>
</html>
