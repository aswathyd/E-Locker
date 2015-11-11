using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Session["cur_user"] = "Not Loged In";
        
        homelabel.Visible = true;
        addattrib();

        
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }
    protected void btnhome_Click(object sender, ImageClickEventArgs e)
    {
               
    }
    protected void btnlogin_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    void addattrib()
    {
        btnlogin.Attributes.Add("onmouseover", "this.src='Buttons/loginmouse.gif'");
        btnlogin.Attributes.Add("onmouseout", "this.src='Buttons/login.gif'");
        btnsignup.Attributes.Add("onmouseover", "this.src='Buttons/signupmouse.gif'");
        btnsignup.Attributes.Add("onmouseout", "this.src='Buttons/signup.gif'");
        btnmysp.Attributes.Add("onmouseover", "this.src='Buttons/myspmouse.gif'");
        btnmysp.Attributes.Add("onmouseout", "this.src='Buttons/mysp.gif'");
        btnabtus.Attributes.Add("onmouseover", "this.src='Buttons/abtusmouse.gif'");
        btnabtus.Attributes.Add("onmouseout", "this.src='Buttons/abtus.gif'");
       
    }
    protected void btnsignup_Click(object sender, ImageClickEventArgs e)
    {

    }
   
    protected void btnmysp_Click(object sender, ImageClickEventArgs e)
    {
        lblmsg1.Visible = true;
        lblmsg2.Visible = true;
        linkmsg.Visible = true;
        
        
    }
    private void MessageBox(string msg)
    {
        Page.Controls.Add(new LiteralControl("<script language='javascript'> window.alert('" + msg.Replace("'", "\\'") + "')</script>"));
    }
}
