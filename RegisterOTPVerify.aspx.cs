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
using System.Configuration;

public partial class RegisterOTPVerify : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["otp"] == null) { Response.Redirect("StudentReg.aspx");
        }

        string cs = ConfigurationManager.ConnectionStrings["College"].ConnectionString;
        con.ConnectionString = cs;
        con.Open();

    }

    protected void Verify_Click(object sender, EventArgs e)
    {
        if (otp.Text == "")
        {
            Label1.Text = "please enter otp";
        }

        else if (otp.Text == Session["otp"].ToString())
        {
            SqlCommand cmd = new SqlCommand("insert into StudentReg (username,name,email,mobile,password) values(@username,@name,@email,@mobile,@password)" ,con);

            cmd.Parameters.AddWithValue("@username", Session["username"].ToString());
            cmd.Parameters.AddWithValue("@name", Session["name"].ToString());
            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            cmd.Parameters.AddWithValue("@mobile", Session["mobile"].ToString());
             cmd.Parameters.AddWithValue("@password", Session["password"].ToString());

          
            cmd.ExecuteNonQuery();
            con.Close();


            string destinationaddr = "91" + Session["mobile"].ToString();
            string message = "Hi " + Session["name"].ToString() + " " +
           Session["email"].ToString() + " Your Account Created Successfully ...To Enjoy More Services Please login to your account Thanks!!(Sent By: Ratnam College Team )";
 String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new
                    NameValueCollection()
 {
 {"apikey" , "lbNLDb1NPSQ-snvn9hpMflaIqTnlD7RErVH0SRVUYK"},
 {"numbers" , destinationaddr},
 {"message" , message1},
 {"sender" , "TXTLCL"}
 });
                string result = System.Text.Encoding.UTF8.GetString(response);
            }
            Response.Redirect("stdent.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Enter the correct OTP Number.');</script>");
        }
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        int value = random.Next(100001, 999999);
      
 string destinationaddr = "91" + Session["mobile"].ToString();
        string message = "Your Mobile Verification OTP is " + value + " ( Sent By : Ratnam college )";
 String message1 = HttpUtility.UrlEncode(message);
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/",   new
           NameValueCollection()
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
}

    
