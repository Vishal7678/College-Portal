<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forget1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <style>
        .form-gap {
    padding-top: 70px;
}
        .auto-style1 {
            width: 100%;
            max-width: 1140px;
            min-width: 992px;
            height: 396px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            left: 0px;
            top: -1px;
            height: 267px;
            margin-top: 0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <form id="Form1" runat="server">


     <div class="form-gap"></div>
<div class="auto-style1">
	<div class="row">
		<div class="auto-style2">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>Enter Your Registered Mobile No</p>
                  <div class="panel-body">
    
                    <form id="register-form" role="form" autocomplete="off" class="form" method="post">
    
                        <div class="text-center">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>

                          <asp:TextBox ID="txtpassotp"   CssClass="form-control"  text="Enter Mobile No"       runat="server" required=""></asp:TextBox>
                        </div>
                      </div>
                      <div class="form-group">
            <asp:Button ID="Button1" CssClass="btn btn-lg btn-primary btn-block"  runat="server" Text="Submit" OnClick="Button1_Click1"    />
                    
                      </div>
                     
                    </form>
  
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
        </form>
</asp:Content>

