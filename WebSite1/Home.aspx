<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>E-locker-Home</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

function TABLE1_onclick() {

}

// ]]>
</script>
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
                                <asp:ImageButton ID="btnhome" runat="server" Height="33px" ImageUrl="~/Buttons/homeclick.gif"
                                    OnClick="btnhome_Click" Width="156px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnlogin" runat="server" Height="33px" ImageUrl="~/Buttons/login.gif"
                                    OnClick="btnlogin_Click" Width="156px" PostBackUrl="~/login.aspx" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:ImageButton ID="btnsignup" runat="server" Height="33px" ImageUrl="~/Buttons/signup.gif"
                                    Width="156px" PostBackUrl="~/regn1.aspx" OnClick="btnsignup_Click" /></td>
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
                    <table id="hometable" style="left: 451px; width: 546px; position: absolute; top: 322px;
                        height: 333px">
                        <tr>
                            <td id="hometd" style="width: 100px">
                                <asp:Label ID="homelabel" runat="server" Font-Bold="True" ForeColor="White" Height="196px"
                                    Text="This is a place where you can store your files in a secure way. Security for your files is never a dream any more."
                                    Visible="False" Width="549px"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table id="lgntable" style="left: 452px; width: 546px; position: absolute; top: 322px;
                        height: 330px">
                        <tr>
                            <td id="lgntd" style="width: 100px">
                                &nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="lblmsg1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                        Font-Size="Medium" ForeColor="#C04000" Height="152px" Style="left: 244px; position: absolute;
                        top: 475px" Text="Only authenticated users can use my space. So please " Visible="False"
                        Width="132px"></asp:Label>
                    <asp:Label ID="lblmsg2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                        Font-Size="Medium" ForeColor="#C04000" Height="1px" Style="left: 289px; position: absolute;
                        top: 538px" Text="first." Visible="False" Width="37px"></asp:Label>
                    <asp:HyperLink ID="linkmsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"
                        NavigateUrl="~/login.aspx" Style="left: 246px; position: absolute; top: 538px"
                        Visible="False" Width="36px">Login</asp:HyperLink>
                </td>
                <td style="background-image: url(Images/nbg.JPG); width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
