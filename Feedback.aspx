<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="Feedbackstyle.css" rel="stylesheet" />
    <title></title>
</head>
<body>
   <section id="contact">
			<div class="section-content">
				<h1 class="section-header">Get in <span class="content-header wow fadeIn " data-wow-delay="0.2s" data-wow-duration="2s"> Touch with us</span></h1>
				<h3>Your feedback is important to us.</h3>
			</div>
			<div class="contact-section">
			<div class="container">
				
                <form runat="server">
					<div class="col-md-6 form-line">
			  			<div class="form-group">
			  				<label for="exampleInputUsername">Your name</label>
                              <asp:TextBox ID="TextBox1" cssClass="form-control" runat="server" placeholder=" Enter Name"></asp:TextBox>
					    	
				  		</div>
				  		<div class="form-group">
					    	<label for="exampleInputEmail">Email Address</label>
                              <asp:TextBox ID="TextBox2" cssClass="form-control" runat="server" placeholder="Enter Email id"></asp:TextBox>
					    	
					  	</div>	
					  	<div class="form-group">
					    	<label for="telephone">Mobile No.</label>
                              <asp:TextBox ID="TextBox3" cssClass="form-control" runat="server" placeholder="Enter 10-digit mobile no"></asp:TextBox>
			  			</div>
			  		</div>
			  		<div class="col-md-6">
			  			<div class="form-group">
			  				<label for ="description"> Message</label>
                              <asp:TextBox ID="TextBox4" cssClass="form-control" runat="server" placeholder="Enter Your Message"></asp:TextBox>
                                
			  			 	
			  			</div>
			  			<div>
       
<asp:Button ID="Button1" cssClass="btn btn-default submit" runat="server" Text="Send Feedback" OnClick="Button1_Click" />
			  				
			  			</div>
			  			
					</div>
				</form>
			</div>
		</section>
</body>
</html>
