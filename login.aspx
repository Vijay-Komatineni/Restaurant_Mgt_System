<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
     
        
        form {
            background: white;
            width: 70%;
            height: 50%;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
            font-family: lato;
            position: center;
            color: #333;
            border-radius: 10px;
            margin-top: 30px;
        }
        .auto-style2 {
            text-align: center;
            color: #800000;
            font-size: xx-large;
            height: 52px;
        }
        .auto-style4 {
            font-size: x-large;
            text-align: center;
            color: #800000;
            }
        .auto-style8 {
            height: 23px;
            width: 32%;
        }
        .auto-style10 {
            height: 23px;
            width: 9%;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style14 {
            width: 3%;
        }
        .auto-style15 {
            width: 9%;
        }
        .auto-style16 {
            width: 32%;
        }
        .auto-style19 {
            height: 23px;
            width: 3%;
        }
        .auto-style20 {
            height: 23px;
            width: 39%;
        }
        .auto-style21 {
            width: 32%;
            color: #800000;
            text-align: right;
        }
        .auto-style23 {
            width: 39%;
        }
        .auto-style24 {
            width: 78%;
            height: 57px;
            margin-left: 166px;
        }
        .auto-style25 {
            width: 88%;
            height: 465%;
            border: 1px solid #800000;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
        }
        .auto-style26 {
            text-align: center;
            height: 30px;
        }
        .auto-style27 {
            color: #FF0000;
        }
        .auto-style28 {
            text-decoration: underline;
        }
        .auto-style29 {
            font-weight: bold;
        }
        .auto-style30 {
            margin-left: 981px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
            font-size:large;
            width: 67px;
        }
            .app_link:visited {
                color: #800000;
            }
            .app_link:link {
                color: #800000;
            }
        </style>
    </head>
<body>
    
    <form id="form1" runat="server" class="auto-style24">
        <div class="auto-style2">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to Galaxy Group of Restaurants</strong></div>
        <p class="auto-style30">
            &nbsp;<a class="app_link" href="home.aspx"><strong>Register</strong></a></p>
        <table  class="auto-style25">
            <tr>
                <td class="auto-style4" colspan="10"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style28">Login&nbsp; </span></strong></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="login_fail" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">Email</td>
                <td class="auto-style27">*</td>
                <td class="auto-style23">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email required" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not valid " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                    
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">Password</td>
                <td class="auto-style27">*</td>
                <td class="auto-style23">
                    <asp:TextBox type="password" ID="password" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password required" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style10"></td>
                <td class="auto-style8"></td>
                <td class="auto-style12"></td>
                <td class="auto-style20"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="10">
                    <strong>
                    <asp:Button ID="loginBtn" runat="server" ForeColor="Maroon" Text="Login" OnClick="login_Click" CssClass="auto-style29" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    </form>
    
    </body>
</html>
