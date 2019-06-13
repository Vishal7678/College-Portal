<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentReg.aspx.cs" Inherits="StudentReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <link href="css/Regstyle.css" rel="stylesheet" />
  
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.23/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/Blitzer/jquery-ui.css" rel="stylesheet" type="text/css" />
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

      
       

    
        
        <div class="loginBox">
		
		<img src="img/user.png" class="user">
		<h2>Sign up Here</h2>
		
            <p>UserName</p>
			<asp:TextBox ID="username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" ControlToValidate="username"
        runat="server" ErrorMessage="userame is required."></asp:RequiredFieldValidator>
    <br />


<p>Name</p>
		<asp:TextBox ID="name" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" ControlToValidate="name"
        runat="server" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
    <br />
             

            	<p>Email</p>
		<asp:TextBox ID="email" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="None" ControlToValidate="email"
        runat="server" ErrorMessage="email is required."></asp:RequiredFieldValidator>


    <br />


          <p>Mobile No</p>
		<asp:TextBox ID="mobile" runat="server"  ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="None" ControlToValidate="mobile"
        runat="server" ErrorMessage="mobile is required."></asp:RequiredFieldValidator>
    <br />


            	<p>Password</p>
		<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="None" ControlToValidate="password"
        runat="server" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
    <br />

           


             <asp:Button ID="Signin" runat="server" Text="Sign In" OnClick="Signin_Click" />

            &nbsp;<br />
            <br />
            <br />
            <div class="w3-panel w3-red w3-card-4">
            <asp:Label ID="Label1" runat="server"></asp:Label>
<div id="validation_dialog" style="display: none">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>               
    </div>
       
                </div>

			
	
        
       
			
           
    </form>
</body>
</html>
