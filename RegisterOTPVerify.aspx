<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterOTPVerify.aspx.cs" Inherits="RegisterOTPVerify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="css/Regstyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <div class="loginBox">
       <img src="img/user.png" class="user">
		<h2>Enter OTP</h2>
		
			
			<asp:TextBox ID="otp" runat="server"></asp:TextBox>
       <asp:Button ID="Verify" runat="server" Text="Button"  />
       <asp:LinkButton ID="LinkButton1" runat="server">Resend</asp:LinkButton>
       
       <asp:Label ID="Label1" runat="server"></asp:Label>
       
    </form>
</body>
</html>
