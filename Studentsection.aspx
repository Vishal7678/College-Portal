<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Studentsection.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>


        .bg {
            /* The image used */
            background-image: url("http://localhost:19157/images/dep.jpg");
           
            
            }
        .auto-style1 {
            /* The image used */
            background-image: url("http://localhost:19157/images/dep.jpg");
            height: 661px;
            text-align: center;
        }
            
            .auto-style2 {
            color: #007bff;
            width: 614px;
            text-align: center;
        }
            
            .auto-style3 {
            color: #007bff;
            width: 426px;
            text-align: center;
        }
        .auto-style4 {
            color: #007bff;
            text-align: center;
        }
            
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">

        <h1 class="text-left text-primary"><strong>Courses</strong></h1>
        <div class="auto-style1">
            <div class="text-center">
            <asp:GridView ID="GridView1" cssclass="table-responsive-xl table table-hover " runat="server" Width="737px" AutoGenerateColumns="False" DataKeyNames="no" DataSourceID="SqlDataSource1" style="font-size: large; color: #FFFFFF;">
                <Columns>
                    <asp:BoundField DataField="no" HeaderText="no" ReadOnly="True" SortExpression="no" />
                    <asp:BoundField DataField="course_name" HeaderText="course_name" SortExpression="course_name" />
                    <asp:HyperLinkField />
                    <asp:HyperLinkField DataNavigateUrlFields="course_pdf" HeaderText="Download" Text="Download" />
                </Columns>
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:College %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
    </div>

          <div class="auto-style6">
       <div class="auto-style7">
  <a href="#" class="list-group-item list-group-item-action active" style="left:906px; top: -545px; width: 35%">
           <div class="text-center">
 KEY LINKS
           </div>
  </a>
  <a href="http://www.ugc.ac.in/" class="list-group-item list-group-item-action" style="left: 907px; top: -536px; width:35%">
           <div class="w3-center">
      <p class="auto-style2">         University Grants Commission (UGC) </p>
           </div>
  </a>
            <a href="http://mu.ac.in/portal/" class="list-group-item list-group-item-action" style="left: 906px; top: -533px; width:35%">
           <div class="w3-center">
        <p class="auto-style4">       University of Mumbai  </p>
           </div>
  </a>
           
            <a href="http://www.dbtindia.nic.in/" class="list-group-item list-group-item-action" style="left: 905px; top: -530px; width:35%">
           <div class="w3-center">
       <p class="auto-style4">     Ministry of Science & Technology INDIA Government of Maharashtra </p>
           </div>
  </a>
           
            <a href="http://jdhemumbai.gov.in/" class="list-group-item list-group-item-action" style="left: 906px; top: -526px; width:35%">
           <div class="w3-center">
          <p class="auto-style3">   INDIA Government of Maharashtra  Joint Director, Mumbai</p>
           </div>
  </a>

</div>
         </div>
    </form>
</asp:Content>

