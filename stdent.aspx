<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stdent.aspx.cs" Inherits="stdent" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/login1.css" rel="stylesheet" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
  
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.23/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/Blitzer/jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap.min.css" rel="stylesheet" />
    <style>

 .bg {
            /* The image used */
            background-image: url("http://localhost:55598/images/dep.png");
            /* Full height */
           
            /* Center and scale  */
        
          
        }
 
 
        </style>
   
    <link href="login2.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">


        <script type="text/javascript">
        function WebForm_OnSubmit() {
            if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
                $("#validation_dialog").dialog({
                    title: "Validation Error!",
                    modal: true,
                    resizable: false,
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    }
                });
                return false;
            }
            return true;
        }
    </script>


<!-- main -->
<div class="section-main"> 
	<div class="bg-layer">
		<h1>Slide Login form</h1>
		<div class="header-main">
			<div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div>
			<div class="header-left-bottom">
				
					<div class="icon1">
						<span class="fa fa-user"></span>
         <asp:TextBox ID="TextBox1" CssClass="form-control text-primary text-lg-center" placeholder="Enter Mobile No"  runat="server" required="Enter mobile no"></asp:TextBox>


                <asp:TextBox ID="TextBox2" CssClass="form-control text-primary text-lg-center" placeholder="Enter Password"   runat="server" required=""></asp:TextBox>

              <asp:Button ID="SignIn"  CssClass="btn btn-primary" runat="server" Text="Login" OnClick="SignIn_Click"   />
         </div>
      


        <div class="text-danger-md">
         
              <a href="StudentReg.aspx"> Register Here</a><br />
             <a href="forget1.aspx"> Forget Password ?</a><br />


            <div id="validation_dialog" style="display: none">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>
            <br />
            <div class="w3-panel w3-red w3-card">
            <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            <br />
        </div>
      </div>
    </div>
    
    </div>
 
    </form>

</body>
</html>
