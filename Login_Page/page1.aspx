<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="Login_Page.page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style10 {
            font-size: xx-large;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 510px;
           
        }
        *{
            box-sizing:border-box;
        }
        table{
            width:100%;
            border:1px solid;
            border-radius:4px;
            padding:inherit;
        }
        body{
            font-family:Verdana, Geneva, Tahoma, sans-serif;
            margin:15px 30px;
            font-size:17px;
            padding: 20px;
        }
        .container{
            background-color:#f2f2f2;
            padding:5px 20px 15px 20px;
            border: 1px solid grey;
            border-radius: 4px;
        }
        .input{
            padding:5px;
            border:1px solid #ccc;
            border-radius:5px;
        }
        input[type="submit"] {
            width: 25%;
            height: 34px;
            border:none;
            background-color: darkseagreen;
            border-radius:3px;
            cursor:grab;
            font-weight:bolder;
            font-size:large;
            margin:0px 359.5px 0px 359.5px;
        }

        input[type="submit"]:hover{
            background-color:aqua;
        }

        th{
            border:1px solid black;
            border-collapse:collapse;
        }

        .auto-style17 {
            text-align: center;
            width: 119px;
        }
        .auto-style18 {
            width: 119px;
        }



    </style>
    </head>
<body >
    <div class="container">
    <form id="form1" runat="server">
        <div class="auto-style11">
            <strong><span class="auto-style10">Training Feedback Form</span></strong>
            <br />
            For participants in SNTI Training<br /><br />
           </div>
        <div>
            <strong>Date:</strong><input type="date" name="Date" class="input"  />
            <br /><br />
            <strong>Title:</strong><asp:TextBox ID="TextBox5" runat="server" CssClass="input" ></asp:TextBox>
            <br />
            <br />
            <strong>Location of training:</strong><asp:TextBox ID="TextBox1" runat="server" Width="536px" CssClass="input" ></asp:TextBox>
            <br /><br />
            <strong>Trainee:</strong><asp:TextBox ID="TextBox2" runat="server" Width="126px"  CssClass="input" ></asp:TextBox>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Trainer:</strong><asp:TextBox ID="TextBox4" runat="server" CssClass="input" ></asp:TextBox>

            <br />
            <br />
            <strong>Instructions:</strong> Please indicate your level of agreement with the statements listed below in #1-5.
            <br />
            <table>
                <tr>
                    <th class="auto-style12">Questions</th>
                    <th class="auto-style18">Agree</th>
                    <th class="auto-style18">Neutral</th>
                    <th class="auto-style18">Disagree</th>       
                </tr>
                <tr>
                    <td class="auto-style12">1.The objective of training were clearly defined.</td>
                    <td class="auto-style17">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="q1" required="required" Text=" " />
                    </td>
                    <td class="auto-style17">
                        <asp:RadioButton  ID="RadioButton2" runat="server" GroupName="q1" required="required" Text=" " />
                    </td>
                    <td class="auto-style11">
                        <asp:RadioButton  ID="RadioButton3" runat="server" GroupName="q1" required="required" Text=" "/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">2.Participation and interaction were encouraged.</td>
                    <td class="auto-style17">
                        <asp:RadioButton  ID="RadioButton4" runat="server" GroupName="q2" required="required" Text=" "/>
                    </td>
                    <td class="auto-style17">
                        <asp:RadioButton  ID="RadioButton5" runat="server" GroupName="q2" required="required" Text=" "/>
                    </td>
                    <td class="auto-style11">
                        <asp:RadioButton  ID="RadioButton6" runat="server" GroupName="q2" required="required" Text=" "/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">3.The topic covered were relevent to me.</td>
                    <td class="auto-style17">
                        <asp:RadioButton  ID="RadioButton7" runat="server" GroupName="q3" required="required" Text=" "/>
                    </td>
                    <td class="auto-style17">
                        <asp:RadioButton  ID="RadioButton8" runat="server" GroupName="q3" required="required" Text=" "/>
                    </td>
                    <td class="auto-style11">
                        <asp:RadioButton  ID="RadioButton9" runat="server" GroupName="q3" required="required" Text=" "/>
                    </td>                 
                </tr>
                <tr>
                    <td class="auto-style12">4.The materials distributed were helpful.</td>
                    <td class="auto-style17">
                        <asp:RadioButton  ID="RadioButton10" runat="server" GroupName="q4" required="required" Text=" "/>
                    </td>
                    <td class="auto-style17">
                        <asp:RadioButton  ID="RadioButton11" runat="server" GroupName="q4" required="required" Text=" "/>
                    </td>
                    <td class="auto-style11">
                        <asp:RadioButton  ID="RadioButton12" runat="server" GroupName="q4" required="required" Text=" "/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">5.The trainer was knowledgeable about the training topics.</td>
                    <td class="auto-style17">
                        <asp:RadioButton  ID="RadioButton13" runat="server" GroupName="q5" required="required" Text=" "/>
                    </td>
                    <td class="auto-style17">
                        <asp:RadioButton  ID="RadioButton14" runat="server" GroupName="q5" required="required" Text=" "/>
                    </td>
                    <td class="auto-style11">
                        <asp:RadioButton  ID="RadioButton15" runat="server" GroupName="q5" required="required" Text=" "/>
                    </td>
                </tr>
                
                
            </table>

            <br />
            Any Suggetions?<asp:TextBox ID="TextBox3" runat="server" Height="45px" Width="262px" CssClass="input" ></asp:TextBox>

            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            <br />
            <br />

        </div>
    
        </form>
        </div>
    </body>
</html>