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
        if (!IsPostBack)
        {
            getidno();
        }
    }
    public void getidno()
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select Count(ApplicationNo) from Admission12");
        
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            Label2.Text = "101";

        }
        else
        {

            String mycon1 = "Data Source=DESKTOP-PDGNSBL;Initial Catalog=College;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(ApplicationNo) from Admission12";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            Label2.Text = ds1.Tables[0].Rows[0][0].ToString();
            int a;
            a = Convert.ToInt32(Label2.Text);
            a = a + 1;
            Label2.Text = a.ToString();
            scon1.Close();

        }

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into Admission12" + "(ApplicationNo,AdmissionSought,Semester,Surname,Name,Father,Mother,PresentAddress,ContactNoS,NativeAddress,ContactNoP,DateOfBirth,PlaceOfBirth,Age,District,State,Nationality,Caste,Mother_Tongue,Religion,StudentEmailID,AdharCardNo,PhysicallyChalleged,BloodGroup,BelongTo,Community,sscboard,sscyear,sscpassed,sscclassobtain,hscboard,hscyear,hscpassed,hscclassobtain,fybscboard,fybscyear,fybscpassed,fybscclassobtain,sybscboard,sybscyear,sybscpassed,sybscclassobtain,Pname,Relationship,Occupation,OfficeAddress,OfficePno,AadharCardNoP,TotalAnnualIncome,TotalDependencies,ParentEmail,ParentMobNo) values(@ApplicationNo,@AdmissionSought,@Semester,@Surname,@Name,@Father,@Mother,@PresentAddress,@ContactNoS,@NativeAddress,@ContactNoP,@DateOfBirth,@PlaceOfBirth,@Age,@District,@State,@Nationality,@Caste,@Mother_Tongue,@Religion,@StudentEmailID,@AdharCardNo,@PhysicallyChalleged,@BloodGroup,@BelongTo,@Community,@sscboard,@sscyear,@sscpassed,@sscclassobtain,@hscboard,@hscyear,@hscpassed,@hscclassobtain,@fybscboard,@fybscyear,@fybscpassed,@fybscclassobtain,@sybscboard,@sybscyear,@sybscpassed,@sybscclassobtain,@Pname,@Relationship,@Occupation,@OfficeAddress,@OfficePno,@AadharCardNoP,@TotalAnnualIncome,@TotalDependencies,@ParentEmail,@ParentMobNo)", con);
        con.Open();

        cmd.Parameters.AddWithValue("@ApplicationNo", Label2.Text);
        cmd.Parameters.AddWithValue("@AdmissionSought", adm.Text);
        cmd.Parameters.AddWithValue("@Semester", sem.Text);
        cmd.Parameters.AddWithValue("@Surname", surname.Text);
        cmd.Parameters.AddWithValue("@Name", name.Text);
        cmd.Parameters.AddWithValue("@Father", father.Text);
        cmd.Parameters.AddWithValue("@Mother", mother.Text);
        cmd.Parameters.AddWithValue("@PresentAddress", padd.Text);
        cmd.Parameters.AddWithValue("@ContactNoS", contactself.Text);
        cmd.Parameters.AddWithValue("@NativeAddress", nadd.Text);
        cmd.Parameters.AddWithValue("@ContactNoP", contactp.Text);
        cmd.Parameters.AddWithValue("@DateOfBirth", dob.Text);
        cmd.Parameters.AddWithValue("@PlaceOfBirth", birth.Text);
        cmd.Parameters.AddWithValue("@Age", age.Text);
        cmd.Parameters.AddWithValue("@District", dist.Text);
        cmd.Parameters.AddWithValue("@State", state.Text);
        cmd.Parameters.AddWithValue("@Nationality", nat.Text);
        cmd.Parameters.AddWithValue("@Caste", caste.Text);
        cmd.Parameters.AddWithValue("@Mother_Tongue", mt.Text);
        cmd.Parameters.AddWithValue("@Religion", reg.Text);
        cmd.Parameters.AddWithValue("@StudentEmailID", email.Text);
        cmd.Parameters.AddWithValue("@AdharCardNo", adhar.Text);
        cmd.Parameters.AddWithValue("@PhysicallyChalleged", phy.Text);
        cmd.Parameters.AddWithValue("@BloodGroup", blood.Text);
        cmd.Parameters.AddWithValue("@BelongTo", doc.Text);
        cmd.Parameters.AddWithValue("@Community", comm.Text);
        cmd.Parameters.AddWithValue("@sscboard", sscboard.Text);
        cmd.Parameters.AddWithValue("@sscyear", sscyear.Text);
        cmd.Parameters.AddWithValue("@sscpassed", sscpaased.Text);
        cmd.Parameters.AddWithValue("@sscclassobtain", sscclassobtain.Text);
        cmd.Parameters.AddWithValue("@hscboard", hscboard.Text);
        cmd.Parameters.AddWithValue("@hscyear", hscyear.Text);
        cmd.Parameters.AddWithValue("@hscpassed", hscpassed.Text);
        cmd.Parameters.AddWithValue("@hscclassobtain", hscclassobtain.Text);
        cmd.Parameters.AddWithValue("@fybscboard", fybscboard.Text);
        cmd.Parameters.AddWithValue("@fybscyear", fybscyear.Text);
        cmd.Parameters.AddWithValue("@fybscpassed", fybscpassed.Text);
        cmd.Parameters.AddWithValue("@fybscclassobtain", fybscclass.Text);
        cmd.Parameters.AddWithValue("@sybscboard", sybscboard.Text);
        cmd.Parameters.AddWithValue("@sybscyear", sybscyear.Text);
        cmd.Parameters.AddWithValue("@sybscpassed", sybscpassed.Text);
        cmd.Parameters.AddWithValue("@sybscclassobtain", sybscclass.Text);
        cmd.Parameters.AddWithValue("@Pname", pname.Text);
        cmd.Parameters.AddWithValue("@Relationship", TextBox29.Text);
        cmd.Parameters.AddWithValue("@Occupation", occupation.Text);
        cmd.Parameters.AddWithValue("@OfficeAddress", TextBox1.Text);
        cmd.Parameters.AddWithValue("@OfficePno", phoneno.Text);
        cmd.Parameters.AddWithValue("@AadharCardNoP", pan.Text);
        cmd.Parameters.AddWithValue("@TotalAnnualIncome", income.Text);
        cmd.Parameters.AddWithValue("@TotalDependencies", dependents.Text);
        cmd.Parameters.AddWithValue("@ParentEmail", pemail.Text);
        cmd.Parameters.AddWithValue("@ParentMobNo", pmobile.Text);


        int i = cmd.ExecuteNonQuery();
        if (i != 0)
        {
            Response.Write("<script>alert(' data added')</script>");
        }
        else
        {
            Response.Write("<script>alert(' Error')</script>");
        }

    }



    
}