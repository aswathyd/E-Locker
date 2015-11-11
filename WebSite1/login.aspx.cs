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
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=.;database=elocker;uid=sa;pwd=sa;");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
     
        addattrib();
        Form.DefaultButton ="btnopen";
        txt_uname.Focus();
    }
    protected void btnopen_Click(object sender, ImageClickEventArgs e)
    {
        cmd = new SqlCommand("select usrid,pswd from tbl_regn", con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds, "usr");
        int ufl=0;
        int pfl = 0;
        for (int i = 0; i < ds.Tables["usr"].Rows.Count; i++)
        {
            string un = ds.Tables["usr"].Rows[i].ItemArray[0].ToString().Trim();

            if (un == txt_uname.Text)
            {
                string pw = ds.Tables["usr"].Rows[i].ItemArray[1].ToString().Trim();
                if (pw == txt_pwd.Text)
                {
                    ufl = 0;
                   Session["cur_user"] = txt_uname.Text;
                   Session["loginmsg"] = "in";
                   Response.Redirect("mysp.aspx");
                }
                else
                {
                    pfl = 1;
                    break;
                    
                }


            }
            else
            {
                ufl = 1;
               
            }
            
        }

        if (pfl == 1)
        {
            lblmsg.Text = "Invalid password. Please try again";
            txt_pwd.Focus();
        }
        if (ufl == 1)
        {
            lblmsg.Text = "Invalid username. Please try again";
            txt_uname.Focus();
           
        }
    }
    protected void btnhome_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void btnsignup_Click(object sender, ImageClickEventArgs e)
    {

    }
     private void MessageBox(string msg)
    {
        Page.Controls.Add(new LiteralControl("<script language='javascript'> window.alert('" + msg.Replace("'", "\\'") + "')</script>"));
    }
    protected void btnmysp_Click(object sender, ImageClickEventArgs e)
    {
        MessageBox("You have to log in first");
    }
    void addattrib()
    {
        btnhome.Attributes.Add("onmouseover", "this.src='Buttons/homemouse.gif'");
        btnhome.Attributes.Add("onmouseout", "this.src='Buttons/home.gif'");
        btnsignup.Attributes.Add("onmouseover", "this.src='Buttons/signupmouse.gif'");
        btnsignup.Attributes.Add("onmouseout", "this.src='Buttons/signup.gif'");
        btnmysp.Attributes.Add("onmouseover", "this.src='Buttons/myspmouse.gif'");
        btnmysp.Attributes.Add("onmouseout", "this.src='Buttons/mysp.gif'");

        btnabtus.Attributes.Add("onmouseover", "this.src='Buttons/abtusmouse.gif'");
        btnabtus.Attributes.Add("onmouseout", "this.src='Buttons/abtus.gif'");
        btnopen.Attributes.Add("onmouseover", "this.src='Buttons/loginbtnms.gif'");
        btnopen.Attributes.Add("onmouseout", "this.src='Buttons/loginbtn.gif'");

    }
}
