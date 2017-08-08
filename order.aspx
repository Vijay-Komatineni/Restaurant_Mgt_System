<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

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
        .button{
            font-weight: bold;
        }
        </style>
    </head>
<body>
    
    <form id="form1" runat="server" class="auto-style24">
        <div class="auto-style2">
            <strong>Galaxy Group of Restaurants</strong></div>
        <p>
            &nbsp;</p>
        <table align="center" class="auto-style25">
            <tr>
                <td class="auto-style4" colspan="10"><strong><span class="auto-style28">Place an Order </span></strong></td>
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
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">Select type of dish</td>
                <td class="auto-style27">*</td>
                <td class="auto-style23">
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="food_type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dish_type">
                        <asp:ListItem>&lt;Select type of dish&gt;</asp:ListItem>
                        <asp:ListItem Value="VEG">Vegetarian</asp:ListItem>
                        <asp:ListItem Value="NONVEG">Non-Vegetarian</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="food_type" ErrorMessage="Please select kind of dish" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <td class="auto-style21">Select your dishes</td>
                <td class="auto-style27">*</td>
                <td class="auto-style23">
&nbsp;&nbsp;&nbsp;
                    <asp:CheckBoxList ID="dish_list" runat="server">
                    </asp:CheckBoxList>
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
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style23">
&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
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
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style23">
&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                    </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
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
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style10"></td>
                <td class="auto-style8"></td>
                <td class="auto-style12"></td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="10">
                    <asp:Button ID="Order_food" runat="server" CssClass="button" ForeColor="Maroon" Text="Order" OnClick="Order_food_Click" />
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
