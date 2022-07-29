<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Login_Page.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        div{
            background-color:#a704e9;
        }
        .auto-style1 {
            height: 279px;
            width: 474px;
            text-align: center;
            margin-left: 291px;
            margin-top: 148px;
            
        }
        .auto-style2 {
            text-decoration: underline;
            color: #800000;
        }
        .auto-style3{
            font-weight:900;
            font-size:larger;
        }

    </style>
</head>
<body style="margin-top: 0px">
    <form id="form1" runat="server">
    <div class="auto-style1">

        <h1><span class="auto-style2"><strong>Create Account</strong></span></h1>
        <br />
&nbsp;&nbsp;&nbsp; User id
        <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox>
        <br />
        Password
        <asp:TextBox ID="TextBox2" runat="server" required="required"></asp:TextBox>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Sign up" ForeColor="#0000CC" Width="89px" CssClass="auto-style3" OnClick="Button1_Click" />

        <br />

    </div>
    </form>
    </body>
</html>
