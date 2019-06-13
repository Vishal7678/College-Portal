using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Net;
using System.Collections.Specialized;
using System.Configuration;

public partial class StudentReg : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["College"].ConnectionString;
        con.ConnectionString = cs;
        con.Open();
    }

    protected void Signin_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Select * from StudentReg where mobile='" + mobile.Text + "'", con);
        SqlDataAdapter ada = new SqlDataAdapter(cmd);
        ada.Fill(ds);
        int i = ds.Tables[0].Rows.Count;
        if (i > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You are already Registered User.');</script>");

            ds.Clear();
        }
        else
        {
            Random random = new Random();
            int value = random.Next(100001, 999999);
            string destinationaddr = "91" + mobile.Text;
            string message = "Your Mobile Verification OTP is " + value + " ( Sent By : Ratnam College Team )";
            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/",
                    new NameValueCollection()
 {
 {"apikey" , "lbNLDb1NPSQ-snvn9hpMflaIqTnlD7RErVH0SRVUYK"},
 {"numbers" , destinationaddr},
 {"message" , message1},
 {"sender" , "TXTLCL"}
 });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;
                Session["username"] = username.Text;
                Session["name"] = name.Text;
                Session["email"] = email.Text;
                Session["mobile"] = mobile.Text;
                Session["password"] = password.Text;

            }
            Response.Redirect("RegisterOTPVerify.aspx");
        }
    }

}
