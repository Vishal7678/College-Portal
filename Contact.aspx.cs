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
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PDGNSBL;Initial Catalog=College;Integrated Security=True");
    SqlDataAdapter da;
    DataTable dt;
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        string InsertQuery = "Insert into Contact values(@Name, @Email, @Subject, @PhoneNumber, @Message)";
        SqlCommand cmd = new SqlCommand(InsertQuery, con);
        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Subject", TextBox3.Text);
        cmd.Parameters.AddWithValue("@PhoneNumber", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Message", TextBox5.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}