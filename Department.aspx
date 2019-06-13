<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

    .bg {
            /* The image used */
            background-image: url("http://localhost:19157/images/dep.png");
            /* Full height */
           
            /* Center and scale  */
        
          
        }
        .auto-style1 {
            /* The image used */
            background-image: url("http://localhost:19157/images/dep.png");
            /* Full height */
            /* Center and scale */
            height: 669px;
        }

        .auto-style2 {
            width: 1544px;
            height: 97px;
            text-align: left;
            font-size: xx-large;
            font-style: italic;
        }

        .auto-style3 {
            height: 38px;
        }
        .auto-style4 {
            height: 38px;
            font-size: x-large;
        }
        
        .auto-style6 {
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            text-align: right;
            margin-bottom: 0;
            padding-left: 0;
        }

        .auto-style7 {
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            text-align: justify;
            margin-bottom: 0;
            padding-left: 0;
        }

        </style>
    <link href="acc.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"  integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"  integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"  integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">

     <div class="auto-style1">
       
         <div>
           <div class="w3-panel w3-leftbar w3-sand w3-xxlarge w3-serif">
    <p class="auto-style2 text-primary"><strong>Department</strong>
       
  
  </div>
</div>     
          <table class="table table-hover bg-primary" style="height: 205px; width: 39%; margin-left: 95px" align="left"> 
   <tr class="table-info">
      <th scope="row" class="auto-style3">&nbsp;</th>
      <td class="auto-style4 text-primary"> <a href="SciDep.aspx">Science</a></td>
      
    </tr>
           
    <tr class="table-primary">
      <th scope="row">&nbsp;</th>
      <td class="auto-style4 text-primary"><a href="CommDep.aspx">Commerce</a></td>
      
    </tr>  
    <tr class="table-primary">
      <th scope="row">&nbsp;</th>
      <td class="auto-style4 text-primary"><a href="Studentsection.aspx">Student Section</a></td>
      
    </tr>  
        </table> 
                             &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
       <div class="auto-style6">
       <div class="auto-style7">
  <a href="#" class="list-group-item list-group-item-action active" style="left:383px; top: 0px; width: 45%">
           <div class="w3-center">
 KEY LINKS
           </div>
  </a>
  <a href="http://www.ugc.ac.in/" class="list-group-item list-group-item-action" style="left: 383px; top: 0px; width:45%">
           <div class="w3-center">
      <p class="text-primary">         University Grants Commission (UGC) </p>
           </div>
  </a>
            <a href="http://mu.ac.in/portal/" class="list-group-item list-group-item-action" style="left: 383px; top: 0px; width:45%">
           <div class="w3-center">
        <p class="text-primary">       University of Mumbai  </p>
           </div>
  </a>
           
            <a href="http://www.dbtindia.nic.in/" class="list-group-item list-group-item-action" style="left: 383px; top: 0px; width:45%">
           <div class="w3-center">
       <p class="text-primary">     Ministry of Science & Technology INDIA Government of Maharashtra </p>
           </div>
  </a>
           
            <a href="http://jdhemumbai.gov.in/" class="list-group-item list-group-item-action" style="left: 383px; top: 0px; width:45%">
           <div class="w3-center">
          <p class="text-primary">   INDIA Government of Maharashtra  Joint Director, Mumbai</p>
           </div>
  </a>

</div>
         </div>
        

  
        </form>
    
</asp:Content>

