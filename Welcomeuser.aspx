<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcomeuser.aspx.cs" Inherits="Welcomeuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .bg {
            /* The image used */
            background-image: url("http://localhost:19157/images/bg1.jpg");
            =;
            /* Full height */
            /* Center and scale  */
        }
        .auto-style3 {
            /* The image used */
            background-image: url("http://localhost:19157/images/bg1.jpg");
            height: 650px;
        }
        </style>
</head>
<body style="height: 435px">
    <form id="form1" runat="server">


        <div class="card-body bg-gradient-info ">
   <marquee><h1>Welcome To Ratnam College</h1></marquee> 
  </div>
        <div class="auto-style3"
        <div class="w3-container">
    <div class="card">
  <div class="card-body bg-gradient-info ">
   &nbsp;</div>
</div>
           
        <div class="w3-center">

            <br/>

            </div>
        <br/>
            
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>


              <a href="Notice/Notice.aspx"  class="list-group-item list-group-item-action active" style="left:342px; top: 2px; width: 54%; height: 94px;">
          
               &nbsp;<h2 class="w3-center">Result </h2>  
&nbsp;
           <a href="Notice/Notice.aspx" class="list-group-item list-group-item-action active" style="left:342px; top: 2px; width: 54%; height: 94px;">
          
               &nbsp;<h2 class="w3-center">Exam Time Table </h2>
            </a>
&nbsp;
         
         <a href="Userprofilepage.aspx" class="list-group-item list-group-item-action active" style="left:342px; top: 2px; width: 54%; height: 94px;">
          
               &nbsp;<h2 class="w3-center">Online Admission Form </h2>  </a>
&nbsp;</div>
          


           
    </form>
</body>
</html>
