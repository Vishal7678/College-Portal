using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Configuration;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mobile"] == null)
        {
            Response.Redirect("stdent.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["College"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        SqlDataAdapter sda = new SqlDataAdapter("select password from studentReg where mobile='" + Session["mobile"].ToString() + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count.ToString() == "1")
        {
            if (txtnewpass.Text == txtcnfnewpass.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update studentReg set password='" + txtcnfnewpass.Text + "'where mobile ='" + Session["mobile"].ToString() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                string destinationaddr = "91" + Session["mobile"].ToString();
                string message = " Your Password Changed Successfully.Now Login with your New password.( Sent By :N.E.S Ratnam College Team )";

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

                }
                Session.Abandon();
                Response.Redirect("stdent.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error.');</script>");

            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Password not match.');</script>");

        }


    }
}