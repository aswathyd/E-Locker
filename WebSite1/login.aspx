<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <div>
        <table style="background-image: url(Images/nbg.JPG); width: 1217px; border-top-style: none;
            border-right-style: none; border-left-style: none; height: 510px; border-bottom-style: none">
            <tr>
                <td style="background-image: url(Images/nbg.JPG); width: 100px">
                </td>
                <td style="background-image: url(Images/back.jpg); width: 575px; height: 648px">
                    <table style="left: 226px; width: 137px; position: absolute; top: 145px; height: 241px">
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnhome" runat="server" Height="33px" ImageUrl="~/Buttons/home.gif"
                                    OnClick="btnhome_Click" Width="156px" PostBackUrl="~/Home.aspx" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnlogin" runat="server" Height="33px" ImageUrl="~/Buttons/loginclk.gif"
                                    OnClick="btnlogin_Click" Width="156px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnsignup" runat="server" Height="33px" ImageUrl="~/Buttons/signup.gif"
                                    OnClick="btnsignup_Click" PostBackUrl="~/regn1.aspx" Width="156px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnmysp" runat="server" Height="33px" ImageUrl="~/Buttons/mysp.gif" Width="156px" OnClick="btnmysp_Click" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnabtus" runat="server" Height="33px" ImageUrl="~/Buttons/abtus.gif"
                                    Width="156px" PostBackUrl="~/abtus.aspx" /></td>
                        </tr>
                    </table>
                    <table id="hometable" style="left: 451px; width: 546px; position: absolute; top: 322px;
                        height: 333px">
                        <tr>
                            <td id="hometd" style="width: 100px">
                                &nbsp;
                                <table style="left: 67px; background-image: url(Images/login.gif); width: 399px;
                                    position: absolute; top: 46px; height: 250px">
                                    <tr>
                                        <td style="width: 100px; height: 70px">
                                        </td>
                                        <td style="width: 100px; height: 70px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; text-align: center">
                                            <asp:Label ID="Label1" runat="server" ForeColor="White" Text="User Name:"></asp:Label></td>
                                        <td style="width: 100px">
                                            <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; text-align: center">
                                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Password:"></asp:Label></td>
                                        <td style="width: 100px">
                                            <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:ImageButton ID="btnopen" runat="server" Height="50px" ImageUrl="~/Buttons/loginbtn.gif"
                                                OnClick="btnopen_Click" Width="156px" />&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                        Font-Size="Medium" ForeColor="#C04000" Height="152px" Style="left: 244px; position: absolute;
                        top: 475px" Width="132px"></asp:Label>
                </td>
                <td style="background-image: url(Images/nbg.JPG); width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
