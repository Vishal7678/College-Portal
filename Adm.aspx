<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adm.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <style>

         .bg {
             /* The image used */
             background-image: url("http://localhost:19157/images/dep.jpg");
             /* Full height */
             /* Center and scale  */
         }

         .auto-style1 {
             width: 867px;
         }

         .auto-style2 {
             display: block;
             font-size: 1rem;
             line-height: 1.5;
             color: #495057;
             background-color: #fff;
             background-clip: padding-box;
             border: 1px solid #ced4da;
             border-radius: 0.25rem;
             transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
         }

         .auto-style3 {
             text-align: left;
             height: 73px;
         }

         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="bg"

	


<div class="container table-responsive">
	<div class="row">
		<div class="col-md-9 col-sm-7">
			</div>

<table border="0" cellpadding="0" cellspacing="0" align="center" class="auto-style1 table-responsive-md ">
<tr><td>

<table width="100%" cellspacing="2" cellpadding="2" border="0" class="table-hover table-responsive">
<tr ><td  valign="middle">
<center><strong><b><h2>Application form for Admission to B.S.C.(Information Technology) Programme</b></strong></td></tr>
<tr ><td >
<center><font face="arial" size="2">N.B. 1) Fill all the columns carefully. Incomplete form will not be accepted.<br>

2) Wrong / False information, If provided, <u>will lead to cancellation of admission.</u>
    <br />
    </font><strong>
    <asp:Label ID="Label1" runat="server" Text="Application No :"></asp:Label>
    </strong>
    <asp:Label ID="Label2" runat="server"></asp:Label>
</td> </tr>
</table>
</td><td align="top">
<table style="border: 1px solid black; display: block;" height="150" width="150" cellpadding="0" cellspacing="0" border="1">
<tr><b>
</td> </tr>
</table>
</td> </tr> 

<table border="1" width="800" cellpadding="0" cellspacing="0" align="center">
<tbody>
<tr>
<td colspan="2" width="125">Admission sought in</td>
<td colspan="2" width="70">
    <asp:TextBox ID="adm" runat="server" Width="209px" Required=""></asp:TextBox>
    </td>
<td colspan="2" width="69">Semester</td>
<td colspan="2" width="40">  <asp:TextBox ID="sem" cssclass="auto-style2" runat="server" Width="140px"></asp:TextBox>
    </td>
<td colspan="8" width="257">Year of <strong><b>B.Sc. (IT)</b></strong> during the academic year</td>
<td colspan="4" width="79">2018-2019</td>
</tr>
<tr>
<td colspan="5" width="219">1.Name : Mr./Ms ((IN BLOCK LETTERS)</td>
<td colspan="5" width="101" class="text-right"><asp:TextBox ID="surname" cssclass="auto-style2" runat="server" Width="140px" Required=""></asp:TextBox>
    </td>
<td colspan="3" width="110"><asp:TextBox ID="name" cssclass="form-control" runat="server"  Width="157px" Required=""></asp:TextBox></td>
<td colspan="3" width="116"><asp:TextBox ID="father" cssclass="form-control" runat="server" Width="155px" Required=""></asp:TextBox></td>
<td colspan="4" width="94"><asp:TextBox ID="mother" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox></td>
</tr>
<tr>
<td colspan="5" width="219">(As appeared in HSC Certificate)</td>
<td colspan="5" width="101">Surname</td>
<td colspan="3" width="110">Name</td>
<td colspan="3" width="116">Father</td>
<td colspan="4" width="94">Mother</td>
</tr>
<tr>
<td colspan="3" width="160">2.Present Address</td>
<td colspan="7" width="160"><asp:TextBox ID="padd" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
<td colspan="4" width="160">Contact No (Self)</td>
<td colspan="6" width="160"><asp:TextBox ID="contactself" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
</tr>
<tr>
<td colspan="3" width="160">3.Native Place Address : (For Long Journey Concession)</td>
<td colspan="7" width="160"><asp:TextBox ID="nadd" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
<td colspan="4" width="160">Contact No (Parent)</td>
<td colspan="6" width="160"><asp:TextBox ID="contactp" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
</tr>
<tr>
<td width="118">4.Date of Birth</td>
<td colspan="6" width="168"><asp:TextBox ID="dob" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
<td colspan="5" width="136">5.Place of Birth</td>
<td colspan="8" width="218"><asp:TextBox ID="birth" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
</tr>
<tr>
<td width="118">Age</td>
<td colspan="6" width="168"><asp:TextBox ID="age" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
<td colspan="5" width="136">6.District</td>
<td colspan="8" width="218"><asp:TextBox ID="dist" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
</tr>
<tr>
<td width="118">7.State</td>
<td colspan="6" width="168"><asp:TextBox ID="state" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
<td colspan="5" width="136">8.Nationality</td>
<td colspan="8" width="218"><asp:TextBox ID="nat" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
</tr>
<tr>
<td width="118">9.Caste</td>
<td colspan="6" width="168"><asp:TextBox ID="caste" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
<td colspan="5" width="136">10.Mother Tongue</td>
<td colspan="8" width="218"><asp:TextBox ID="mt" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
</tr>
<tr>
<td width="118">11.Religion</td>
<td colspan="6" width="168"><asp:TextBox ID="reg" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
<td colspan="5" width="136">Student Email ID:</td>
<td colspan="8" width="215"><asp:TextBox ID="email" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
</tr>
<tr>
<td colspan="9" width="319">12.Adhar Card No</td>
<td colspan="10" width="319"><asp:TextBox ID="adhar" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
</tr>
<tr>
<td colspan="12" width="423">13.Physically Challenged Â Yes/ No. Â If Yes, submit documentary proof for the same</td>
<td colspan="3" width="94"><asp:TextBox ID="phy" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
    </td>
<td>Blood Group</td><td><asp:TextBox ID="blood" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
    </td>
</tr>
<tr>
<td colspan="12" width="413">14.Do you belong to SC/ST/DT/NT/VJ NT/ OBC/ SBC? Yes/No Â (If Yes, submit documentary proof for the same for getting freeship/scholarship)</td>
<td colspan="3" width="225"><asp:TextBox ID="doc" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
    </td>
</tr>
<tr>
<td colspan="12" width="413">15.Do you belong to Muslim / Sikh / Boudh/ Christian/ Parsi/ Jain/ Maratha Community ? If yes then write</td>
<td colspan="8" width="225"><asp:TextBox ID="comm" cssclass="form-control" runat="server" Width="154px" Required=""></asp:TextBox>
    </td>
</tr>
</tbody>
</table>
&nbsp;

<!--
<table border="1" width="800" cellpadding="0" cellspacing="0" align="center">
<tr><td colspan="2">16.Subjects offered: (Tick Selected Subject)</td> </tr>
<tr>
<td width="157">Class</td>
<td width="481">Compulsory Subjects</td>
<td></td>
</tr>
<tr>
<td width="157">Semester - 1</td>
<td width="481">1.Introduction to Information Theory and Applications.</br>
				2.Mathmatics-I</br>
				3.Introduction to Digital electronics</br>
				4.Digital Computer Fundamentals</br>
				5.Introductions to Programming</td>
				<td>

</td>
</tr>
<tr>
<td width="157">Semester - II</td>
<td width="481">1.Mathematics II</br>

2.Design and analysis of algorithms.</br>

3.Tele Communication systems.</br>

4.Professional Skill Development Course.</br>

5.Computer Graphics.</td>
<td>

</td>
</tr>
<tr>
<td width="157">Semester - III</td>
<td width="481">1.Computational Mathematics</br>

2.Systems Programming</br>

3.Objects oriented programming</br>

4.Computer Networks.</br>
5.Logic, Discrete Mathematical Structures.</td>
<td>

</td>
</tr>
<tr>
<td width="157">Semester - IV

&nbsp;</td>
<td width="481">1.Data base concepts and Systems</br> 
				2.Operating Systems</br> 
				3.C++ and Java </br>
				4.E-Commerce </br>
				5.Sw Engineering</td>
				<td>

</td>
</tr>
<tr>
<td width="157">Semester - V

&nbsp;</td>
<td width="481">1.Internet Security</br> 
				2.Visual Basic-6. </br>
				3.SQL-2</br>
				<strong>Elective I :</strong> </br>
				1.Multimedia</br> 
				2.Embedded Systems and Programming</br> 
				3.Web Design and Internet based applications</br> 
				4.Advanced Java </br>
				<strong>Elective II :</strong> </br>
				1.ERP Systems </br>
				2.GIS </br>
				3.Management Information Sysems </br>
				4.BPR</td>
	<td>
	</br>
	</br>
	</br></br>
	<input type="checkbox" name="sem5" value="Multimedia"></br>
	<input type="checkbox" name="sem5" value="Embedded Systems and Programming"></br>
	<input type="checkbox" name="sem5" value="Web Design and Internet based applications"></br>
	<input type="checkbox" name="sem5" value="Advanced Java"></br></br>
	<input type="checkbox" name="sem5" value="ERP Systems"></br>
	<input type="checkbox" name="sem5" value="GIS"></br>
	<input type="checkbox" name="sem5" value="Management Information Sysems"></br>
	<input type="checkbox" name="sem5" value="BPR">

</td>
</tr>
<tr>
<td width="157">Semester VI

&nbsp;</td>
<td width="481">1.C# (Pronounced as C Sharp)</br>
				2.Internet Technologies </br>
				3.CRM</br>
				<strong><b>Elective III</b></strong>:</br>
				1.Strategic IT Management </br>
				2.Total Supply Chain Management</br>
				3.Project Management </br>
				4.IT Laws and Patents.</td>
<td>
	</br>
	</br>
	</br></br>
	<input type="checkbox" name="sem6" value="Strategic IT Management"></br>
	<input type="checkbox" name="sem6" value="Total Supply Chain Management"></br>
	<input type="checkbox" name="sem6" value="Project Management"></br>
	<input type="checkbox" name="sem6" value="IT Laws and Patents">

</td>
</tr>
</tbody>
</table> -->

<table border="1" align="center" width="800" cellpadding="0" cellspacing="0">
<tr><td colspan="5"><ol start="17">
 	<li>Academic Record (Attach xerox copies of Marksheet)</li>
</ol> </td> </tr>
<tr>
<td width="127">Examination</td>
<td width="127">Board / University</td>
<td width="127">Month &amp; Year Of Passing</td>
<td width="127">Passed</td>
<td width="127">Class Obtained</br>
(In case of Pass in one attampt)</td>
</tr>
<tr>
<td width="127">S.S.C</td>
<td width="127">
  

    <asp:TextBox ID="sscboard" cssclass="auto-style2" runat="server" Width="219px" required="" ></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="sscyear" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="sscpaased" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="sscclassobtain" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
</tr>
<tr>
<td width="127">H.S.C</td>
<td width="127" class="text-center">
    <asp:TextBox ID="hscboard" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="hscyear" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="hscpassed" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="hscclassobtain" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
</tr>
<tr>
<td width="127">F.Y.B.Sc. Â (IT)</td>
<td width="127">
    <asp:TextBox ID="fybscboard" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="fybscyear" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="fybscpassed" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="fybscclass" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
</tr>
<tr>
<td width="127">S.Y B.Sc. Â (IT) </td>
<td width="127" class="text-center">
    <asp:TextBox ID="sybscboard" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="sybscyear" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="sybscpassed" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="127">
    <asp:TextBox ID="sybscclass" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
</tr>
</tbody>
</table>
&nbsp;
<table align="center" border="1" width="800" cellpadding="0" cellspacing="0">
<tr><td colspan="4"><ol start="18">
 	<li>Partiulars of Parent / Guardian)</li>
</ol> </td> </tr>
<tr>
<td width="159">a. Name</td>
<td width="111">
    <asp:TextBox ID="pname" cssclass="auto-style2" runat="server" Width="219px"></asp:TextBox>
    </td>
<td width="234">b. Relationship will the student (in case of guardian)

&nbsp;</td>
<td width="133">
    <asp:TextBox ID="TextBox29" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
</tr>
<tr>
<td width="159">c. Occupation</td>
<td width="111">
    <asp:TextBox ID="occupation" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="234">d. Office Address</td>
<td width="133">
    <asp:TextBox ID="TextBox1" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
</tr>
<tr>
<td width="159">e. Office Phone No.</td>
<td width="111">
    <asp:TextBox ID="phoneno" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="234">f. Adhar Card & of Pan Card No.</td>
<td width="133">
    <asp:TextBox ID="pan" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
</tr>
<tr>
<td width="159">g. Total annual income from all sources</td>
<td width="111">
    <asp:TextBox ID="income" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="234">h. Total no. of dependents</td>
<td width="133">
    <asp:TextBox ID="dependents" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
</tr>
<tr>
<td width="159">h.Parent Email</td>
<td width="111">
    <asp:TextBox ID="pemail" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
<td width="234">i.Parent Mobile Number</td>
<td width="133">
    <asp:TextBox ID="pmobile" cssclass="auto-style2" runat="server" Width="219px" Required=""></asp:TextBox>
    </td>
</tr>
</tbody>
</table>
&nbsp;




&nbsp;
&nbsp;<br />
        <br />
&nbsp;<br />
        <div class="auto-style3">

    <asp:Button ID="Button1" cssclass="btn btn-primary" runat="server" Text="Submit"  Width="158px"/>
        </div>


		</div>
		
		</div>
    </div>
        </div>
        


  
        </form>
        
</asp:Content>

