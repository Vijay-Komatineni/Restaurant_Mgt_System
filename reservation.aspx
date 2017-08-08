<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reservation.aspx.cs" Inherits="reservation" %>

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
             height: 56px;
         }
         .auto-style3 {
             width: 90%;
             height: 465%;
             border: 1px solid #800000;
             box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
               }
         .auto-style4 {
             color: #800000;
             font-size: x-large;
             text-decoration: underline;
             text-align: center;
         }
         .auto-style7 {
             height: 14px;
         }
         .auto-style8 {
             height: 1px;
         }
         .auto-style9 {
             text-align: right;
             color: #800000;
             width: 258px;
         }
         .auto-style10 {
             color: #FF0000;
             width: 19px;
         }
         .auto-style11 {
             margin-left: 166px;
             height: 87%;
             width: 78%;
         }
         .auto-style12 {
             width: 258px;
         }
         .auto-style13 {
             width: 19px;
         }
         .auto-style14 {
             height: 23px;
         }
         .auto-style15 {
             width: 258px;
             height: 23px;
         }
         .auto-style16 {
             width: 19px;
             height: 23px;
         }
         .auto-style17 {
             height: 23px;
             width: 82px;
         }
         .auto-style18 {
             width: 82px;
         }
         .auto-style19 {
             text-align: center;
         }
         .auto-style20 {
             font-weight: bold;
         }
            .app_link:link {
                color: #800000;
            }
         </style>
</head>
<body style="height: 69px">
    <form id="form1" runat="server" class="auto-style11">
    <div class="auto-style2">
        <strong>Galaxy Group of Restaurants</strong></div>
    <p>
        &nbsp;</p>
    <table align="center" class="auto-style3">
        <tr>
            <td colspan="10" class="auto-style4"><strong>Reservation</strong></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style9">Pick a restaurant</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">
                <asp:DropDownList ID="restaurant_list" runat="server" DataSourceID="SqlDataSource1" DataTextField="RESTAURANT_ADDR" DataValueField="RESTAURANT_ID">
                    <asp:ListItem>&lt;Select a restaurant&gt;</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [RESTAURANT_ADDR], [RESTAURANT_ID] FROM [RESTAURANT]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="10"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style9">How many people? <br />
                (Press &#39;Enter&#39; after specifying)</td>
            <td class="auto-style10">*</td>
            <td class="auto-style18">
                <asp:TextBox ID="num_ppl" runat="server" AutoPostBack="True" OnTextChanged="check_available"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="num_ppl" ErrorMessage="Please tell how many people" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style9">Pick your choice</td>
            <td class="auto-style10">*</td>
            <td class="auto-style18">
                <asp:CheckBoxList ID="table_list" runat="server">
                </asp:CheckBoxList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
             </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style19" colspan="10"><strong>
                <asp:Button ID="reserve" runat="server" CssClass="auto-style20" ForeColor="Maroon" OnClick="reserve_Click" Text="Reserve" />
                </strong></td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         </table>
    </form>
        </body>
</html>
