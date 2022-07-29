<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Login_Page.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
            color: #8b9d3e
        }
        .auto-style3{
            background-color: #764141;
        }
        .auto-style4 {
            margin-top: 55px;
        }
    </style>
</head>
<body class="auto-style3">
    <form id="form1" runat="server">

        <div class="auto-style1">
            <span class="auto-style2"><strong>Insert the Passcode</strong></span><br />
        <asp:TextBox ID="TextBox1" runat="server"  Width="83px"></asp:TextBox>

        <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Continue" Width="67px" />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" CssClass="auto-style4">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField ApplyFormatInEditMode="True" DataField="user_id" HeaderText="User Id">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="Name">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="Title of Internship">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="guide_name" HeaderText="Guide Name">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="location" HeaderText="Location">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="Date_Feed" HeaderText="Date">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="feedback_1" HeaderText="The objective of training were clearly defined">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="feedback_2" HeaderText="Participation and interaction were encouraged">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="feedback_3" HeaderText="The topic covered were relevent to me.">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="feedback_4" HeaderText="The materials distributed were helpful.">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="feedback_5" HeaderText="The trainer was knowledgeable about the training topics.">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="suggetions" HeaderText="Suggetions">
                <ItemStyle BorderStyle="Solid" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <div>
        </div>
    </form>
</body>
</html>
