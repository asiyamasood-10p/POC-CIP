<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LoginFormWebApp.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Login Form" ForeColor="Black"></asp:Label>
            <style>
                body {
                    text-align: center;
                    margin-top: 10rem;   
                    font-size: 2rem;
                }
                form{
                    border: solid;
                    margin-left: 30%;
                    margin-right: 30%;

                }
                div {
                     padding-bottom: 10px;
                }
                .btn-login{
                    margin-left: 15%;
                }
                .checkbox {
                    margin-left: 15%;
                }
            </style>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="35px"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="35px"></asp:TextBox>
        </div>
        <input type="checkbox" class="checkbox" onchange="document.getElementById('TextBox2').type = this.checked ? 'text' : 'password'"/> Show Password
        <div>
            <asp:Button ID="Button1" CssClass="btn-login" runat="server" Text="Login" BackColor="#66FF66" ForeColor="White" Height="30px" Width="80px" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="#CC0000" ForeColor="White" Height="30px" Width="80px" />
        </div>
    </form>
</body>
</html>
