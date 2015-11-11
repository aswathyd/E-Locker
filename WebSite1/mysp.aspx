<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mysp.aspx.cs" Inherits="mysp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>E-locker-My Space</title>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <div>
        <table style="width: 1217px; height: 495px">
            <tr>
                <td style="width: 100px; height: 652px;">
                </td>
                <td style="background-image: url(Images/tst.jpg); width: 575px; height: 645px">
                    <table style="left: 227px; width: 137px; position: absolute; top: 143px; height: 241px">
                        <tr>
                            <td style="width: 124px">
                                <asp:ImageButton ID="btnhome" runat="server" Height="33px" ImageUrl="~/Buttons/logout.gif"
                                    OnClick="btnhome_Click" Width="156px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                <asp:ImageButton ID="btnlogin" runat="server" Height="33px" ImageUrl="~/Buttons/login.gif"
                                    Width="156px" OnClick="btnlogin_Click" /></td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                <asp:ImageButton ID="btnsignup" runat="server" Height="33px" ImageUrl="~/Buttons/signup.gif"
                                    Width="156px" OnClick="btnsignup_Click" /></td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                <asp:ImageButton ID="btnmysp" runat="server" Height="33px" ImageUrl="~/Buttons/myspclk.gif"
                                    Width="156px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 124px">
                                <asp:ImageButton ID="btnabtus" runat="server" Height="33px" ImageUrl="~/Buttons/abtus.gif"
                                    Width="156px" OnClick="btnabtus_Click" PostBackUrl="~/abtus.aspx" /></td>
                        </tr>
                    </table>
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Label ID="label_user" runat="server" Font-Bold="True" Font-Names="Arrus BT"
                        Font-Size="Large" Font-Strikeout="False" ForeColor="White" Style="left: 625px;
                        position: absolute; top: 178px; text-align: center;" Text="Your Files" Width="225px"></asp:Label>
                    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ListBox ID="ListBox1" runat="server" Height="272px" Style="left: 514px; position: absolute;
                        top: 226px" Width="445px" Font-Size="Medium"></asp:ListBox>
                    <asp:Panel ID="Panel1" runat="server" BorderColor="Blue" BorderStyle="Groove" BorderWidth="2px"
                        Height="67px" Style="left: 496px; position: absolute; top: 577px" Width="210px">
                    <asp:Button ID="Btnupload" runat="server" OnClick="Button1_Click" Style="left: 61px;
                        position: absolute; top: 35px" Text="Upload" Width="81px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="left: 30px; position: absolute;
                        top: 6px; text-align: right;" Width="144px" />
                        &nbsp;&nbsp;
                    </asp:Panel>
                    &nbsp;
                    <asp:Panel ID="Panel3" runat="server" BorderColor="Blue" BorderStyle="Groove" BorderWidth="2px"
                        Height="66px" Style="left: 741px; position: absolute; top: 576px" Width="210px">
                    <asp:Button ID="btndownload" runat="server" OnClick="btndownload_Click" Style="left: 58px;
                        position: absolute; top: 5px" Text="Download" Width="80px" />
                        <asp:Button ID="BtnDelFile" runat="server" OnClick="BtnDelFile_Click1" Style="left: 58px;
                            position: absolute; top: 35px" Text="Delete File" Width="81px" />
                        &nbsp;&nbsp;
                    </asp:Panel>
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Style="left: 646px; position: absolute;
                            top: 542px" Text="Password:" Width="62px"></asp:Label>
                        <asp:TextBox ID="txt_passwd" runat="server" Style="left: 724px; position: absolute;
                            top: 540px" TextMode="Password" Width="99px"></asp:TextBox>
                    &nbsp;
                    <table style="left: 236px; width: 149px; position: absolute; top: 92px; height: 42px">
                        <tr>
                            <td style="width: 100px; height: 21px">
                                <asp:Label ID="Label1" runat="server" ForeColor="Cyan" Text="Logged In as:" Width="141px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="lbl_cur_user" runat="server" ForeColor="Cyan" Style="text-align: center"
                                    Width="142px"></asp:Label></td>
                        </tr>
                    </table>
                    <asp:Label ID="lblmsg1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                        Font-Size="Medium" ForeColor="#C04000" Height="152px" Style="left: 244px; position: absolute;
                        top: 475px" Width="132px"></asp:Label>
                </td>
                <td style="width: 100px; height: 652px;">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
