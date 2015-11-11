<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regn1.aspx.cs" Inherits="regn1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1217px; height: 510px">
            <tr>
                <td style="width: 100px">
                </td>
                <td style="background-image: url(Images/bgnd_rgn.jpg); width: 575px; height: 650px">
                    <table style="left: 560px; width: 368px; position: absolute; top: 180px; height: 433px">
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="User Name" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 30px;">
                                <asp:TextBox ID="txtusr" runat="server" BorderStyle="Inset" BorderWidth="3px" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Password" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 30px;">
                                <asp:TextBox ID="txtpwd1" runat="server" BorderStyle="Inset" BorderWidth="3px" ValidationGroup="*" Width="150px" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Confirm Password" Width="122px"></asp:Label></td>
                            <td style="width: 100px; height: 30px;">
                                <asp:TextBox ID="txtrepwd" runat="server" BorderStyle="Inset" BorderWidth="3px" TextMode="Password"
                                    ValidationGroup="*" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="First Name" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 30px;">
                                <asp:TextBox ID="txtfname" runat="server" BorderStyle="Inset" BorderWidth="3px" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Last Name" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 30px;">
                                <asp:TextBox ID="txtlname" runat="server" BorderStyle="Inset" BorderWidth="3px" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label6" runat="server" ForeColor="White" Text="e-mail" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 30px;">
                                <asp:TextBox ID="txtemail" runat="server" BorderStyle="Inset" BorderWidth="3px" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Address" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 45px;">
                                <asp:TextBox ID="txtaddr" runat="server" BorderStyle="Inset" BorderWidth="3px" TextMode="MultiLine"
                                    Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label8" runat="server" ForeColor="White" Text="City" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 30px;">
                                <asp:TextBox ID="txtcity" runat="server" BorderStyle="Inset" BorderWidth="3px" OnTextChanged="txtcity_TextChanged" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label9" runat="server" ForeColor="White" Text="State" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 30px;">
                                <asp:TextBox ID="txtstate" runat="server" BorderStyle="Inset" BorderWidth="3px" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px; height: 35px">
                                <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Country" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 30px">
                                <asp:TextBox ID="txtcountry" runat="server" BorderStyle="Inset" BorderWidth="3px" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:Label ID="Label11" runat="server" ForeColor="White" Text="pin" Width="102px"></asp:Label></td>
                            <td style="width: 100px; height: 30px;">
                                <asp:TextBox ID="txtpin" runat="server" BorderStyle="Inset" BorderWidth="3px" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">
                                <asp:CheckBox ID="Chk_terms" runat="server" ForeColor="White" Height="21px" Style="left: 0px;
                                    position: absolute; top: 399px" Text="I accept the" Width="96px" />
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Cyan" Height="20px" NavigateUrl="~/terms.aspx"
                                    Style="left: 19px; position: absolute; top: 422px" Target="_blank" Width="136px">Terms and Conditions</asp:HyperLink>
                            </td>
                            <td style="width: 100px; height: 50px">
                                <asp:ImageButton ID="btncreate" runat="server" Height="33px" ImageUrl="~/Buttons/create.gif"
                                    Width="156px" OnClick="btncreate_Click" /></td>
                        </tr>
                    </table>
                    <table style="left: 228px; width: 137px; position: absolute; top: 143px; height: 241px">
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnhome" runat="server" Height="33px" ImageUrl="~/Buttons/home.gif"
                                    OnClick="btnhome_Click" PostBackUrl="~/Home.aspx" Width="156px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnlogin" runat="server" Height="33px" ImageUrl="~/Buttons/login.gif"
                                    Width="156px" OnClick="btnlogin_Click1" PostBackUrl="~/login.aspx" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnsignup" runat="server" Height="33px" ImageUrl="~/Buttons/signupclk.gif"
                                    Width="156px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnmysp" runat="server" Height="33px" ImageUrl="~/Buttons/mysp.gif"
                                    Width="156px" OnClick="btnmysp_Click" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnabtus" runat="server" Height="33px" ImageUrl="~/Buttons/abtus.gif"
                                    Width="156px" PostBackUrl="~/abtus.aspx" /></td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
