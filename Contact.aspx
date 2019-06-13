<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/css_slider.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: 0.25rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- contact -->
	<section class="contact pb-5" id="contact">
		<div class="container pb-xl-5 pb-lg-3">
			<h3 class="text-bl text-center font-weight-bold mb-2">Contact Us</h3>
			<h6 class="text-colors text-center let-spa mb-5">Get In Touch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h6>
            <h3 class="text-colors text-center let-spa mb-5"> <a href="Feedback.aspx" > Give Your FeedBack </a> </h3>
			<div class="row mx-sm-0 mx-2">
				<!-- map -->
				<div class="col-lg-6 map" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3769.044168863955!2d72.9333609145255!3d19.149543787045804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b86e528cb077%3A0x454af0e9b39745ac!2sNES+Ratnam+College+of+Arts%2C+Science+and+Commerce!5e0!3m2!1sen!2sin!4v1554224984058!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>				</div>
				<!-- //map -->
				<!-- contact form -->
				<div class="col-lg-6 main_grid_contact" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000">
					<div class="form-w3ls p-md-5 p-4">
						<h4 class="mb-4 sec-title-w3 let-spa text-bl">Send us a message</h4>
						<form id="form1" runat="server">
							<div class="row">
								<div class="col-sm-6 form-group pr-sm-1">
                                   
                                      <asp:TextBox ID="TextBox1" cssclass="form-control" placeholder="Name"  runat="server" Width="755px" required=""></asp:TextBox>
    
								</div>
								<div class="col-sm-6 form-group pl-sm-1">

                                    <asp:TextBox ID="TextBox2" cssclass="form-control" placeholder="Email"  runat="server" Width="755px" required=""></asp:TextBox>
								</div>
							</div>
							<div class="form-group">
                                <asp:TextBox ID="TextBox3" cssclass="form-control" placeholder="Subject"  runat="server" Width="755px" required=""></asp:TextBox>

							</div>
							<div class="form-group">
                                <asp:TextBox ID="TextBox4" cssclass="form-control" placeholder="Phone Number"  runat="server" Width="755px" required=""></asp:TextBox>
                                
							</div>
							<div class="form-group">
								  <asp:TextBox ID="TextBox5" cssclass="form-control" placeholder="Message"  runat="server" Width="755px" required=""></asp:TextBox>
							</div>
							<div class="input-group1 text-right">
                                <asp:button runat="server" text="Submit" cssClass="btn"  />

							</div>
						</form>
					</div>
				</div>
				<!-- //contact form -->
			</div>
		</div>
	</section>
	<!-- //contact -->


</asp:Content>

