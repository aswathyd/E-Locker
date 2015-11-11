<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abtus.aspx.cs" Inherits="abtus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>E-locker-About Us</title>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <div>
        &nbsp;<table style="background-image: url(Images/nbg.JPG); width: 1217px; border-top-style: none;
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
                                <asp:ImageButton ID="btnlogin" runat="server" Height="33px" ImageUrl="~/Buttons/login.gif"
                                    OnClick="btnlogin_Click" Width="156px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnsignup" runat="server" Height="33px" ImageUrl="~/Buttons/signup.gif"
                                    OnClick="btnsignup_Click" Width="156px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnmysp" runat="server" Height="33px" ImageUrl="~/Buttons/mysp.gif" Width="156px" OnClick="btnmysp_Click" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnabtus" runat="server" Height="33px" ImageUrl="~/Buttons/abtusclk.gif"
                                    Width="156px" /></td>
                        </tr>
                    </table>
                    <asp:Panel ID="Panel1" runat="server" Height="189px" Style="left: 503px; position: absolute;
                        top: 406px; text-align: center" Width="444px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                            left: 83px; position: absolute; top: 32px" Text="Developed By:"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 101;
                            left: 187px; position: absolute; top: 32px" Text="Aswathy Dinesh"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                            left: 82px; position: absolute; top: 106px" Text="Contact us at:"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 101;
                            left: 186px; position: absolute; top: 106px" Text="elocker@hotmail.com"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 102;
                            left: 187px; position: absolute; top: 53px" Text="Sajith KS"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 104;
                            left: 187px; position: absolute; top: 74px" Text="Sarath Rajan P"></asp:Label>
                    </asp:Panel>
                    &nbsp;
                </td>
                <td style="background-image: url(Images/nbg.JPG); width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
