using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PDGNSBL;Initial Catalog=College;Integrated Security=True");
    SqlDataAdapter da;
    DataTable dt;
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string InsertQuery = "Insert into Feedback values(@Yourname, @Email, @Mobileno, @Message)";
        SqlCommand cmd = new SqlCommand(InsertQuery, con);
        cmd.Parameters.AddWithValue("@Yourname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Mobileno", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Message", TextBox4.Text);
        

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Thankyou for your feedback.');</script>");
    }
}