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


public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter ada = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["College"].ConnectionString;
        con.ConnectionString = cs;
        con.Open();

    }

    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            cmd.CommandText = "Select * from StudentReg where mobile='" + txtpassotp.Text + "'";
            cmd.Connection = con;
            ada.SelectCommand = cmd;
            ada.Fill(ds, "StudentReg");
            if (ds.Tables[0].Rows.Count > 0)
            {
                try
                {
                    Random random = new Random();
                    int value = random.Next(100001, 999999);
                    string destinationaddr = "91" + txtpassotp.Text;
                    string message = "Your Password Change Request OTP Number is " + value + " ( Sent By : N.E.S Ratnam College Management Team )";
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
                        Session["mobile"] = txtpassotp.Text;
                        Response.Redirect("Forget2p.aspx");
                    }

                }
                catch (WebException xe)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please check Your Internet connection');</script>");
                }


            }

            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Mobile Number is not yet Registered.');</script>");
            }

        }
        catch (Exception xe)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Server is taking too much time to respond you.please try sometime later');</script>");

        }
    }
}  