<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Receipt.aspx.cs" Inherits="Receipt" %>

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
            text-decoration: underline;
            height: 30px;
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
            height: 23px;
            width: 32%;
            text-align: right;
            color: #800000;
        }
        .auto-style29 {
            text-align: center;
            text-decoration: underline;
            color: #800000;
            font-size: large;
        }
        .auto-style30 {
            text-align: right;
            height: 30px;
            color: #800000;
            width: 32%;
        }
        .auto-style31 {
            text-align: left;
            height: 30px;
        }
        .auto-style32 {
            font-size: large;
        }
        .button{
            font-weight:bold;
        }
        </style>
    </head>
<body>
    
    <form id="form1" runat="server" class="auto-style24">
        <div class="auto-style2">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;Galaxy Group of Restaurants</strong></div>
        <p>
            &nbsp;</p>
        <table align="center" class="auto-style25">
            <tr>
                <td class="auto-style4" colspan="10"><strong>Receipt</strong></td>
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
                <td class="auto-style28">Customer Name:</td>
                <td class="auto-style12"></td>
                <td class="auto-style20"><strong>
                    <asp:Label ID="cus_name" runat="server"></asp:Label>
                    </strong></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style23">
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="10">Reservation and Order details</td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="10"></td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="10"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">Restaurant Address: </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style23">
                    <strong>
                    <asp:Label ID="rest_addr" runat="server"></asp:Label>
                    </strong>
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
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">Contact number:</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style23">
                    <strong>
                    <asp:Label ID="con_num" runat="server"></asp:Label>
                    </strong>
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
                <td class="auto-style28">Table No.:</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style20">
                    
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                    
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style28">Items ordered:</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style20">
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
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
                <td class="auto-style20"><strong></strong></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style30">
                    Subtotal:</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style31">
                    <strong>
                    <asp:Label ID="sub_price" runat="server"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">TAX@8.25%:</td>
                <td>&nbsp;</td>
                <td class="auto-style23"><strong>
                    <asp:Label ID="tax" runat="server"></asp:Label>
                    </strong></td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
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
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">Grand Total:</td>
                <td>&nbsp;</td>
                <td class="auto-style23"><strong>
                    <asp:Label ID="tot_price" runat="server" CssClass="auto-style32"></asp:Label>
                    </strong></td>
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
                <td>&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style23">
                    <asp:Button ID="Logout" CssClass="button" runat="server" ForeColor="Maroon" Text="Logout" OnClick="Logout_Click" />
                    
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    </form>
    
    </body>
</html>
