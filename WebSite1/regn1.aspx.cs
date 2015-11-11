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
using System.IO;


public partial class regn1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=.;database=elocker;uid=sa;pwd=sa;");

    int flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            con.Open();
        }
        catch
        {
        }
       
        addattrib();
    }
    protected void txtcity_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnhome_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, ImageClickEventArgs e)
    {

    }


    protected void btncreate_Click(object sender, ImageClickEventArgs e)
    {

        flag = 0;
        SqlCommand cmd1 = new SqlCommand("select usrid from tbl_regn", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds, "usr");
        for (int i = 0; i < ds.Tables["usr"].Rows.Count; i++)
        {
            string s = ds.Tables["usr"].Rows[i].ItemArray[0].ToString().Trim();
           
            if (s == txtusr.Text)
            {
                flag = 1;
                break;
            }

        }
               
        if (flag == 0)
        {
            

            if (txtpwd1.Text != txtrepwd.Text)
            {
                MessageBox("Password Mismatch!!!");
            }
            else
            {
                if (Chk_terms.Checked)
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("insert into tbl_regn values('" + txtusr.Text + "','" + txtpwd1.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtaddr.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtcountry.Text + "'," + txtpin.Text + ")", con);
                        cmd.ExecuteNonQuery();
                        string path = System.AppDomain.CurrentDomain.BaseDirectory.ToString() + "/" + "User Files/" + txtusr.Text;
                        Directory.CreateDirectory(path);
                        MessageBox("Your account is created successfully!!!");
                        Response.Redirect("login.aspx");

                    }
                    catch
                    {


                        MessageBox("Please check the fields you have entered!!");

                    }
                }
                else
                {
                    MessageBox("You have to accept the Terms and Conditions to register!!");
                }
            }
        }
        else
        {
            MessageBox("User name already excisting!!");
        }

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
        btnlogin.Attributes.Add("onmouseover", "this.src='Buttons/loginmouse.gif'");
        btnlogin.Attributes.Add("onmouseout", "this.src='Buttons/login.gif'");
        btnhome.Attributes.Add("onmouseover", "this.src='Buttons/homemouse.gif'");
        btnhome.Attributes.Add("onmouseout", "this.src='Buttons/home.gif'");
        btnmysp.Attributes.Add("onmouseover", "this.src='Buttons/myspmouse.gif'");
        btnmysp.Attributes.Add("onmouseout", "this.src='Buttons/mysp.gif'");

        btnabtus.Attributes.Add("onmouseover", "this.src='Buttons/abtusmouse.gif'");
        btnabtus.Attributes.Add("onmouseout", "this.src='Buttons/abtus.gif'");
        btncreate.Attributes.Add("onmouseover", "this.src='Buttons/createmouse.gif'");
        btncreate.Attributes.Add("onmouseout", "this.src='Buttons/create.gif'");


    }
    protected void btnlogin_Click1(object sender, ImageClickEventArgs e)
    {

    }
}
