using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlDataAdapter da;
    DataTable dt;
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("stdent.aspx");

        }
        else
        { 
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-2KSA2NV\DJ;Initial Catalog=College;Integrated Security=True");
            con.Open();
        }


    }
           
    

        public void showdata()
        {
            cmd = new SqlCommand("Select * from StudentReg where email='" + Session["user"] + "'");
        cmd.Connection = con;
        da.SelectCommand = cmd;
        
            da.Fill(ds);
        Session["user"] = Session["name"].ToString();
        Label1.Text = Session["user"].ToString();



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
