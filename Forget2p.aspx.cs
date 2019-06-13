using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mobile"] == null)
        {
            Response.Redirect("forget1.aspx");
        }

    }

   
       
    protected void Button1_Click1(object sender, EventArgs e)
    {


        if (txtotpverify.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please Enter the OTP.');</script>");
        }
        else if (txtotpverify.Text == Session["otp"].ToString())
        {
            Response.Redirect("Change1.aspx");

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Enter correct OTP');</script>");

        }
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        try
        {
            Random random = new Random();
            int value = random.Next(100001, 999999);
            string destinationaddr = "91" + Session["mobile"].ToString();
            string message = "Your Password Change Request OTP Number is " + value + " ( Sent By :N.E.S Ratnam College  Management Team )";
            String message1 = HttpUtility.UrlEncode(message);

            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "lbNLDb1NPSQ-snvn9hpMflaIqTnlD7RErVH0SRVUYK"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;
            }
        }
        catch (WebException xe)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please check Your Internet connection');</script>");
        }

    }



}

