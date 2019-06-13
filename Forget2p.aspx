<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forget2p.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div class="text-center">
        <div class="form-gap"></div>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>You can reset your password here.</p>
                  <div class="panel-body">
    
                   
    
                      <div class="form-group">
                       
                      <asp:TextBox ID="txtotpverify"  CssClass="form-control" runat="server"></asp:TextBox>
                          
                        </div>
                      </div>
                      <div class="form-group">
<asp:Button ID="Button1"  class="btn btn-lg btn-primary btn-block" runat="server" Text="Submit" OnClick="Button1_Click1" />
                        
                      </div>
                      
    
                  </div>
               
              </div>
            </div>
          </div>
	</div>
</div>
         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" >ResendOTP</asp:LinkButton>
        </div>
    </form>
</asp:Content>

