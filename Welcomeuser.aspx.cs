using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Welcomeuser : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter ada = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
       
       
        
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PDGNSBL;Initial Catalog=College;Integrated Security=True");
            con.Open();
        
    }
    public void showdata()
    {
        cmd.CommandText = "Select * from StudentReg where email='" + Session["name"] + "'";
        cmd.Connection = con;
        ada.SelectCommand = cmd;
        ada.Fill(ds);
        Label1.Text=ds.Tables[0].Rows[0]["name"].ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Notice/Notice.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Notice/ExaminationTT.aspx");

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userprofilepage.aspx");
    }
}