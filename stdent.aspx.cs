using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class stdent : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter ada = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] != null)
        {
            Response.Redirect("stdent.aspx");
        }
        else
        {
            String cs = ConfigurationManager.ConnectionStrings["College"].ConnectionString;
            con.ConnectionString = cs;
            con.Open();

        }
    }

    protected void SignIn_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text.Trim();
        cmd.CommandText = "Select * from StudentReg where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cmd.Connection = con;
        ada.SelectCommand = cmd;
        ada.Fill(ds, "StudentReg");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["email"] = name;
            //Session["name"] = name;
            Response.Redirect("Welcomeuser.aspx");
        }
        else
        {
            Label1.Text = "Please Enter Valid Email And Passowrd";
        }
    }

}
