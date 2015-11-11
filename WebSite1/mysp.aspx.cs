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
using System.IO;
using System.Security;
using System.Security.Cryptography;
using System.Runtime.InteropServices;
using System.Text;
using System.Data.SqlClient;


public partial class mysp : System.Web.UI.Page
{
    string password;
    string dfltpath;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string uname = Session["cur_user"].ToString().Trim();
        dfltpath = System.AppDomain.CurrentDomain.BaseDirectory.ToString() + "/" + "User Files/" + uname;
      
        if (!IsPostBack)
        {
            loadlist();
        }
        addattrib();
       
        if (Context.Session != null)
        {
            lbl_cur_user.Text = Session["cur_user"].ToString();
            string msg = Session["loginmsg"].ToString().Trim();
            if (msg == "in")
            {
                lblmsg1.Text = "Welcome " + uname + ".\nYou have logged in successfully.";
                Session["loginmsg"] = " ";
            }
        }
      
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void btnhome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            if (txt_passwd.Text != "")
            {
                EncryptFile();
                ListBox1.Items.Clear();
                loadlist();
            }
            else
            {
                MessageBox("Please enter a password to decrypt the file");
                txt_passwd.Focus();
            }
            
        }
        else
        {
            MessageBox("Please select a file to upload");
            FileUpload1.Focus();
        }
    }
    private void EncryptFile()
    {
        if (FileUpload1.FileName != "")
        {
            //  creating output file name
            string outfile = dfltpath + "/" + FileUpload1.FileName;
            outfile = outfile.Replace('.', '_');
            outfile = outfile + ".cry";
            label_user.Text = outfile;
            // The following function uses Rijndael encryption algorithm to encrypt file
            // Becouse the Rijndael algoritm is private-key algoritm we need one
            // private key and IV. I composed private key from password entered by user.
            // IV is the same as password but this probably is not good.
            // A key and IV have to be exactly 16 bytes length so we have to truncate
            // password if it is longer then 8 characters (16 bytes) or to add some characters
            // if password length is less then 8 characters.
            password = txt_passwd.Text;
            try
            {
                if (password.Length > 8)
                    password = password.Substring(0, 8);
                else if (password.Length < 8)
                {
                    int add = 8 - password.Length;
                    for (int i = 0; i < add; i++)
                        password = password + i;
                }
                UnicodeEncoding UE = new UnicodeEncoding();
                byte[] key = UE.GetBytes(password);


                FileStream fsCrypt = new FileStream(outfile, FileMode.Create);

                RijndaelManaged RMCrypto = new RijndaelManaged();

                CryptoStream cs = new CryptoStream(fsCrypt,
                    RMCrypto.CreateEncryptor(key, key),
                    CryptoStreamMode.Write);
                string upldfile = FileUpload1.PostedFile.FileName;
                FileStream fsIn = new FileStream(upldfile, FileMode.Open);

                int data;
                while ((data = fsIn.ReadByte()) != -1)
                    cs.WriteByte((byte)data);

                lblmsg1.Text = "Your File is uploaded successfully!!";
                fsIn.Close();
                cs.Close();
                fsCrypt.Close();
            }
            catch
            {
                lblmsg1.Text = "Encryption faild!! \nTry Again";
            }
        }
        else
        {
            MessageBox("Select a file to upload!!!");
        }

    }
    private void DecryptFile()
    {
        Directory.CreateDirectory("d:/elocker_files");


       //string outfile = "d:/elocker_downloads/" + ListBox1.SelectedItem.ToString();
       //string outfile = dfltpath + "/" + ListBox1.SelectedItem.ToString();
       string outfile = ListBox1.SelectedItem.ToString();

        outfile = outfile.Substring(0, outfile.Length - 4);
       
        outfile = outfile.Replace('_', '.');
       
        // The following function uses Rijndael encryption algorithm to encrypt file

        // Becouse the Rijndael algoritm is private-key algoritm we need one
        // private key and IV. I composed private key from password entered by user.
        // IV is the same as password but this probably is not good.
        // A key and IV have to be exactly 16 bytes length so we have to truncate
        // password if it is longer then 8 characters (16 bytes) or to add some characters
        // if password length is less then 8 characters.

        password = txt_passwd.Text;
        try
        {
            if (password.Length > 8)
                password = password.Substring(0, 8);
            else if (password.Length < 8)
            {
                int add = 8 - password.Length;
                for (int i = 0; i < add; i++)
                    password = password + i;
            }

            UnicodeEncoding UE = new UnicodeEncoding();
            byte[] key = UE.GetBytes(password);
            string dldfile = dfltpath + "/" + ListBox1.SelectedItem.ToString();
            
           
            FileStream fsCrypt = new FileStream(dldfile, FileMode.Open);

            RijndaelManaged RMCrypto = new RijndaelManaged();

            CryptoStream cs = new CryptoStream(fsCrypt,
                RMCrypto.CreateDecryptor(key, key),
                CryptoStreamMode.Read);
            outfile = "d:/elocker_files/" + outfile;
             FileStream fsOut = new FileStream(outfile, FileMode.Create);
            //FileStream fsOut = new FileStream("C:/outfile.pdf", FileMode.Create);

            int data;
            while ((data = cs.ReadByte()) != -1)
                fsOut.WriteByte((byte)data);

            fsOut.Close();
            cs.Close();
            fsCrypt.Close();
            lblmsg1.Text = "Downloading Successful. File is saved in the directory "+"\"d:/elocker_files/"+"\"";
        }
        catch
        {
           lblmsg1.Text = "Decryption faild!! \nProbably password is incorrect";
        }
    }
    void loadlist()
    {

        //ListBox1.Items.Clear();


        label_user.Text = Session["cur_user"].ToString().Trim() + "'s Files";
        //MessageBox(dfltpath);
        DirectoryInfo di = new DirectoryInfo(dfltpath);
        FileInfo[] fi = di.GetFiles();
        foreach (FileInfo f in fi)
        {
           ListBox1.Items.Add(f.Name);
          
        }
      
        
    }
    protected void btndownload_Click(object sender, EventArgs e)
    {

        if (ListBox1.SelectedIndex >= 0)
        {
            if (txt_passwd.Text != "")
            {
                DecryptFile();
                ListBox1.Items.Clear();
                loadlist();
            }
            else
            {
                MessageBox("Please enter a password to decrypt the file");
                txt_passwd.Focus();
            }
        }
        else
        {
            MessageBox("Please select a file to download");
            FileUpload1.Focus();
        }
       
    }
   
    private void MessageBox(string msg)
    {
        Page.Controls.Add(new LiteralControl("<script language='javascript'> window.alert('" + msg.Replace("'", "\\'") + "')</script>"));
    }
   



    protected void BtnDelFile_Click1(object sender, EventArgs e)
    {
        if (ListBox1.SelectedIndex >= 0)
        {
            string dltfile = dfltpath + "/" + ListBox1.SelectedItem.ToString();
            File.Delete(dltfile);
            ListBox1.Items.Clear();
            loadlist();
        }
        else
        {
            MessageBox("Please select a file to delete");
        }
    }
    void addattrib()
    {
        btnhome.Attributes.Add("onmouseover", "this.src='Buttons/logoutmouse.gif'");
        btnhome.Attributes.Add("onmouseout", "this.src='Buttons/logout.gif'");
        btnlogin.Attributes.Add("onmouseover", "this.src='Buttons/loginmouse.gif'");
        btnlogin.Attributes.Add("onmouseout", "this.src='Buttons/login.gif'");
        btnsignup.Attributes.Add("onmouseover", "this.src='Buttons/signupmouse.gif'");
        btnsignup.Attributes.Add("onmouseout", "this.src='Buttons/signup.gif'");
        btnabtus.Attributes.Add("onmouseover", "this.src='Buttons/abtusmouse.gif'");
        btnabtus.Attributes.Add("onmouseout", "this.src='Buttons/abtus.gif'");


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
    protected void btnabtus_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void btnsignup_Click(object sender, ImageClickEventArgs e)
    {
        string s = Session["cur_user"].ToString();
        if (s != "Not Loged In")
        {
            MessageBox("You have to log out first");
        }
        else
        {
            Response.Redirect("regn1.aspx");
        }
    }
}
