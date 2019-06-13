<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="depart.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

        .bg {
            /* The image used */
            background-image: url("http://localhost:55598/images/admindep.jpg");
            /* Full height */
            /* Center and scale  */
        }
           
          
           .auto-style7 {
            /* The image used */
               background-image: url('http://localhost:55598/images/admindep.jpg');
               /* Full height */
               /* Center and scale  */
            height: 750px;
        }
           
          
           .auto-style9 {
            width: 85%;
            height: 268px;
        }
           
          
           .auto-style18 {
            width: 329px;
            text-align: center;
            height: 65px;
            color: #FFFFFF;
        }
        .auto-style19 {
            width: 390px;
            text-align: left;
            height: 65px;
        }
        .auto-style20 {
            height: 65px;
        }
           
          
           .auto-style21 {
            height: 54px;
            width: 329px;
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style22 {
            height: 54px;
            width: 390px;
            text-align: center;
        }
        .auto-style23 {
            height: 54px;
        }
        .auto-style24 {
            height: 53px;
            width: 329px;
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style25 {
            height: 53px;
            width: 390px;
            text-align: center;
        }
        .auto-style26 {
            height: 53px;
        }
           
          
           .auto-style28 {
            text-align: center;
        }
           
          
           </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">

 <div class="card">
  <div class="card-body bg-gradient-info ">
   <marquee><h1>Welcome To Admin Panel</h1></marquee> 
  </div>
</div>

        
      <div class="auto-style7 table-hover table-responsive-xl table-borderless">


          <table align="center" class="auto-style9">
              <tr>
                  <td class="auto-style24">
                      Srno</td>
                  <td class="auto-style25 ">
                      <asp:TextBox ID="TextBox1" cssclass="form-control form-control-lg"   runat="server" Width="359px" Required=""></asp:TextBox>
                  </td>
                  <td class="auto-style26">
                      <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="ADD COURSE" OnClick="Button1_Click"  />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style21">
                      Course Name</td>
                  <td class="auto-style22">
                      <asp:TextBox ID="TextBox2" cssclass="form-control form-control-lg" runat="server" Width="359px" Required=""></asp:TextBox>
                  </td>
                  <td class="auto-style23">
                      <asp:Button ID="Button2" class="btn btn-primary btn-lg" runat="server" Text="EDIT COURSE"   />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="Button4" cssclass="btn btn-danger btn-lg"              runat="server" Text="Fetch" OnClick="Button4_Click" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style18">
                      Upload pdf</td>
                  <td class="auto-style19">
                      <asp:FileUpload ID="FileUpload" cssclass="form-control-file btn btn-primary btn-lg" runat="server" Width="361px" Required=""/>
                  </td>
                  <td class="auto-style20">
                      <asp:Button ID="Button3"  class="btn btn-primary btn-lg"                runat="server" Text="DELETE  COURSE" OnClick="Button3_Click"   />
                      <br />
                      <asp:Label ID="Label1" runat="server"></asp:Label>
                  </td>
              </tr>
              </table>
          <div class="auto-style28">
              <asp:gridview ID="GridView1"      cssclass="table table-hover  table align-content-md-center table-responsive-lg table-borderless text-primary text-lg-center "            runat="server" Width="1137px" style="font-size: large"></asp:gridview>
      </div>
  </div>
    </form>
</asp:Content>




