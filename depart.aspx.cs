using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PDGNSBL;Initial Catalog=College;Integrated Security=True");
    SqlDataAdapter da;
    DataTable dt;
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //insert data

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Select * from course where no='" + Convert.ToInt32(TextBox1.Text) + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        int i = ds.Tables[0].Rows.Count;
        if (i > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Data alredy inserted.');</script>");

            ds.Clear();
        }
        else
        {
           cmd = new SqlCommand("insert into course" + "(no,course_name,course_pdf) values(@no, @course_name, @course_pdf)", con);
            con.Open();
            FileUpload.SaveAs(Server.MapPath("~/pdf/") +
   Path.GetFileName(FileUpload.FileName));
            String link = "pdf/" + Path.GetFileName(FileUpload.FileName);
            cmd.Parameters.AddWithValue("@no", TextBox1.Text);
            cmd.Parameters.AddWithValue("@course_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@course_pdf", link);
            i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert(' data added')</script>");
            }
            else
            {
                Response.Write("<script>alert(' Error')</script>");
            }


        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("delete from course where no=" + Convert.ToInt32(TextBox1.Text) + "", con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script>alert(' Data deleted')</script>");
        }
        else
        {
            Response.Write("<script>alert(' Invalid no')</script>");
        }
        con.Close();
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from course;", con);
        dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}
