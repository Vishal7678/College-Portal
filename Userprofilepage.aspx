<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userprofilepage.aspx.cs" Inherits="Userprofilepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>
    <script src="js/jquery-2.1.4.min.js"></script>  
    <script src="js/bootstrap.min.js"></script>
    <title></title>
    <style>
        #bg {
            
            background-image: url("images/dep.jpg");
            
        }     
        
        .auto-style1 {
            width: 100%;
            max-width: 1140px;
            min-width: 992px;
            height: 745px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 287px;
            padding-left: 15px;
            padding-right: 15px;
        }
        
    </style>
</head>
<body>
    <form runat="server">
    <div id="bg">
    <div class="auto-style1">  
        <div class="card">
  <div class="card-body bg-gradient-info ">
   <marquee><h1>Online Admission Forms</h1></marquee> 
  </div>
</div> 
        <!--Bootstrap Basic Table using .table class-->  
        <table class="table table-striped" style="height: 280px; width: 96%">  
            <thead>  
                <tr>  
                    <th>Subject Names</th>  
                    <th>Forms</th>  
                      
                </tr>  
            </thead>  
            <tbody>  
                <tr>  
                    <td>
                        <br />
                        Bachelor of Science in Information Technology (BSc.IT)<br />
                    </td>  
                    <td>
                        <br />
                        <a href="Adm.aspx">IT Form</a></td>  
                      
                </tr>  
                <tr>  
                    <td>
                        <br />
                        Bachelor of Science in Computer Science (BSc.CS)<br />
                    </td>  
                    <td>
                        <br />
                        <a href="AdmCS.aspx">CS Form</a></td>  
                </tr>  
                <tr>  
                    <<td>
                        <br />
                        Bachelor of Banking & Insurance (BBI)<br />
                    </td>  
                    <td>
                        <br />
                        <a href="AdmBBI.aspx">BBI Form</a></td>   
                </tr>  
            </tbody>  
        </table>  
    </div>  
        </div> 
        </form>
</body>
</html>
