using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class abtus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        addattrib();
        if (Context.Session != null)
        {
          
        }
    }
    protected void btnhome_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, ImageClickEventArgs e)
    {
        string s = Session["cur_user"].ToString();
        if (s != "Not Loged In")
        {
            MessageBox("You have to log out first");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btnsignup_Click(object sender, ImageClickEventArgs e)
    {
        string s = Session["cur_user"].ToString();
        if (s!= "Not Loged In")
        {
            MessageBox("You have to log out first");
        }
        else
        {
            Response.Redirect("regn1.aspx");
        }
    }
    void addattrib()
    {
        btnhome.Attributes.Add("onmouseover", "this.src='Buttons/homemouse.gif'");
        btnhome.Attributes.Add("onmouseout", "this.src='Buttons/home.gif'");
        btnlogin.Attributes.Add("onmouseover", "this.src='Buttons/loginmouse.gif'");
        btnlogin.Attributes.Add("onmouseout", "this.src='Buttons/login.gif'");
        btnsignup.Attributes.Add("onmouseover", "this.src='Buttons/signupmouse.gif'");
        btnsignup.Attributes.Add("onmouseout", "this.src='Buttons/signup.gif'");
        btnmysp.Attributes.Add("onmouseover", "this.src='Buttons/myspmouse.gif'");
       btnmysp.Attributes.Add("onmouseout", "this.src='Buttons/mysp.gif'");


    }
    protected void btnmysp_Click(object sender, ImageClickEventArgs e)
    {
        string s = Session["cur_user"].ToString();
        if (s == "Not Loged In")
        {
            MessageBox("You have to log in first");
        }
        else
        {
            Response.Redirect("mysp.aspx");
        }
            
    }
    private void MessageBox(string msg)
    {
        Page.Controls.Add(new LiteralControl("<script language='javascript'> window.alert('" + msg.Replace("'", "\\'") + "')</script>"));
    }
}
