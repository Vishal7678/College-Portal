<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/profile.css" rel="stylesheet" />
    <style type="text/css">
        #bg {
            background-image: url("http://localhost:49420/images/studt.jpg");
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">

<div id="bg">
    <div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="http://keenthemes.com/preview/metronic/theme/assets/admin/pages/media/profile/profile_user.jpg" class="img-responsive" alt="">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						
					    <asp:Label ID="Label1" runat="server"></asp:Label>
						
					</div>
					
				</div>
				<!-- END SIDEBAR USER TITLE -->
				<!-- SIDEBAR BUTTONS -->
				<div class="profile-userbuttons">
					<button type="button" class="btn btn-danger btn-sm">Message</button>
				</div>
				<!-- END SIDEBAR BUTTONS -->
				<!-- SIDEBAR MENU -->
				<div class="profile-usermenu">
					<ul class="nav">
						<li class="active">
							<asp:Button ID="Button2" CssClass="btn btn-danger"  runat="server" Text="OverView" />
						</li>
						<li>
							<asp:Button ID="Button1" cssclass="btn btn-primary"    runat="server" Text="View Account" />
						</li>
						
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-flag"></i>
							Help </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
		<div class="col-md-9">
          
			                 
       <div class="auto-style6">
       <div class="text-center">
  <a href="#" class="list-group-item list-group-item-action active" style="left:383px; top: 0px; width: 45%">
           <div class="w3-center">
 &nbsp;IMPORTANT LINKS
           </div>
  </a>
  <a href="http://www.ugc.ac.in/" class="list-group-item list-group-item-action" style="left: 383px; top: 0px; width:45%">
           <div class="w3-center">
      <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style2" ToolTip="Notice/Notice.aspx" OnClick="LinkButton1_Click">Notice</asp:LinkButton>
           </div>
  </a>
            <a href="http://mu.ac.in/portal/" class="list-group-item list-group-item-action" style="left: 383px; top: 0px; width:45%">
           <div class="w3-center">
        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style2" ToolTip="Notice/ExaminationTT.aspx" OnClick="LinkButton2_Click">Examination Timetable</asp:LinkButton>
           </div>
  </a>
           
            <a href="http://www.dbtindia.nic.in/" class="list-group-item list-group-item-action" style="left: 383px; top: 0px; width:45%">
           <div class="w3-center">
       <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style2" ToolTip="Userprofilepage.aspx" OnClick="LinkButton3_Click">Online Admission Form</asp:LinkButton>
           </div>
  </a>
            </div>
		</div>
	</div>
</div>
<center>
<strong>Powered by <a href="#" target="_blank">Ratnam College</a></strong>
</center>
<br/>
<br/>
    </form>
</asp:Content>

