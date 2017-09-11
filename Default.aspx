<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="preview_dotnet_templates_registration_Form_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="House Move Quote">
    <title>House Move Quote</title>
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Move Made Easy</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
          
        </div>
    </div>
    <div class="container">
      
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Your Details <i class="fa fa-home pull-right"></i></legend>
                        <div class="form-group">
                            <asp:Label ID="lblName" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtName" runat="server" placeholder="Enter your Name" CssClass="form-control" BorderStyle="None"></asp:TextBox>
                           
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
                                ErrorMessage="Name cannot be blank" Text="Name cannot be blank" ControlToValidate="txtName" 
                                Font-Bold="True" BackColor="Red" BorderStyle="Inset"></asp:RequiredFieldValidator>
                             </div>
                         </div>

                         <div class="form-group">
                            <asp:Label ID="lblEmal" runat="server" Text="Email" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your Email" CssClass="form-control"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
                                ErrorMessage="Email cannot be blank" Text="Email cannot be blank" ControlToValidate="txtEmail" 
                                Font-Bold="True" BackColor="Red" BorderStyle="Inset"></asp:RequiredFieldValidator>
                            
                           
                              </div>
                        </div>

                         <div class="form-group">
                            <asp:Label ID="lblPhone" runat="server" Text="Phone" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter your Phone number" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" 
                                ErrorMessage="Phone cannot be blank" Text="Phone cannot be blank" ControlToValidate="txtPhone" 
                                Font-Bold="True" BackColor="Red" BorderStyle="Inset"></asp:RequiredFieldValidator>

                          

                            </div>
                        </div>

                         <div class="form-group">
                            <asp:Label ID="lblMoveFrom" runat="server" Text="Moving From Address" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtMoveFrom" runat="server" placeholder="Enter Moving From Address" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFromAddress" runat="server" 
                                ErrorMessage="Address cannot be blank" Text="Address cannot be blank" ControlToValidate="txtMoveFrom" 
                                Font-Bold="True" BackColor="Red" BorderStyle="Inset"></asp:RequiredFieldValidator>
                            
                            </div>
                        </div>

                         <div class="form-group">
                            <asp:Label ID="lblPropertyTypeFrom" runat="server" Text="Property Type" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:DropDownList ID="dlistFromPropertyType" runat="server" BackColor="firebrick">
                                <asp:ListItem>Flat</asp:ListItem>
                                <asp:ListItem>Semi Detached</asp:ListItem>
                                <asp:ListItem>Detached</asp:ListItem>
                                <asp:ListItem>Bungalow</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPropertyTypeFrom" runat="server" 
                                ErrorMessage="Property type cannot be blank" ControlToValidate="dlistFromPropertyType"
                                Font-Bold="True" BackColor="Red" BorderStyle="Inset"></asp:RequiredFieldValidator>
                             </div>
                        </div>

                         <div class="form-group">
                            <asp:Label ID="lblBedRoomFrom" runat="server" Text="Number of Bedrooms" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                 <div class="radio">
                                    <label>
                                        <asp:RadioButtonList ID="RadioButtonListBedFrom" runat="server">
                                            <asp:ListItem Selected="True">1Bed</asp:ListItem>
                                            <asp:ListItem>2Bed</asp:ListItem>
                                            <asp:ListItem>3Bed</asp:ListItem>
                                            <asp:ListItem>4Bed</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </label>
                                </div>                                                       
                                                          
                             </div>
                        </div>

      <%--***********************************************************************************************************************--%>
     
                      

                         <div class="form-group">
                            <asp:Label ID="lblMovingTo" runat="server" Text="Moving To Address" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtMovingTo" runat="server" placeholder="Enter Moving To Address" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="Address cannot be blank" Text="Address cannot be blank" ControlToValidate="txtMovingTo" 
                                Font-Bold="True" BackColor="Red" BorderStyle="Inset"></asp:RequiredFieldValidator>
                            
                            </div>
                        </div>

                         <div class="form-group">
                            <asp:Label ID="lblPropertyTypeTo" runat="server" Text="Property Type" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:DropDownList ID="dlistToPPropertyType" runat="server" BackColor="firebrick">
                                <asp:ListItem>Flat</asp:ListItem>
                                <asp:ListItem>Semi Detached</asp:ListItem>
                                <asp:ListItem>Detached</asp:ListItem>
                                <asp:ListItem>Bungalow</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ErrorMessage="Property type cannot be blank" ControlToValidate="dlistToPPropertyType"
                                Font-Bold="True" BackColor="Red" BorderStyle="Inset"></asp:RequiredFieldValidator>
                             </div>
                        </div>

                         <div class="form-group">
                            <asp:Label ID="lblBedRoomTo" runat="server" Text="Number of Bedrooms" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                 <div class="radio">
                                    <label>
                                        <asp:RadioButtonList ID="RadioButtonListBedTo" runat="server">
                                            <asp:ListItem Selected="True">1Bed</asp:ListItem>
                                            <asp:ListItem>2Bed</asp:ListItem>
                                            <asp:ListItem>3Bed</asp:ListItem>
                                            <asp:ListItem>4Bed</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </label>
                                </div>                                                       
                                                          
                             </div>
                        </div>   
                        
                      <%--  Service Required--%>

                        <div class="form-group">
                            <asp:Label ID="lblService" runat="server" Text="Services Required " CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                 <div class="radio">
                                    <label>
                                        <asp:RadioButtonList ID="RadioButtonListServices" runat="server">
                                            <asp:ListItem Text="Removal with full packing" Value="full"></asp:ListItem>
                                            <asp:ListItem Text="Removal with packing of breakable items" Value="breakable"></asp:ListItem>
                                            <asp:ListItem Selected="True" Text="Removal only" Value="removal"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </label>
                                </div>                                                       
                                                          
                             </div>
                        </div>   
                    
                        <%--Storage required--%>
                        <div class="form-group">
                            <asp:Label ID="lblStorage" runat="server" Text="Storage" CssClass="col-lg-2 control-label"></asp:Label>
                             <div class="col-lg-10">
                                 <div class="radio">
                                    <label>
                                        <asp:CheckBoxList ID="CheckBoxListStorage" runat="server">
                                            <asp:ListItem  Text="Containerised storage" Value="storage"></asp:ListItem>
                                        </asp:CheckBoxList>
                                    </label>
                                </div>                                                       
                                                          
                             </div>
                        </div>   
                    


                                <div class="form-group">
                            <asp:Label ID="lblDate" runat="server" Text="Moving Date" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                                                 
                                <asp:Calendar ID="Calendar1" runat="server" ></asp:Calendar>
                                                                                                                                              
                            </div>
                        </div>   
                                            
                   
                      
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnGetAQUOTE" runat="server" CssClass="btn btn-primary" Text="GET A QUOTE" OnClick="btnGetAQUOTE_Click" />
                                                                                      
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>


         <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
             
            
           
             <h3><strong> <span style="color:firebrick">Your quote for the house move</span></strong></h3>
              <asp:TextBox ID="txtResult" runat="server" Font-Bold="True" Font-Size="X-Large" BorderStyle="Outset" BorderWidth="5px" ForeColor="Firebrick" ReadOnly="True"></asp:TextBox><br />
             <asp:TextBox ID="txtStorage" runat="server" Font-Bold="True" Font-Size="Large" BorderStyle="Outset" BorderWidth="5px" ForeColor="Firebrick" ReadOnly="True"></asp:TextBox><br />
             <asp:TextBox ID="txtPacking" runat="server" Font-Bold="True" Font-Size="Large" BorderStyle="Outset" BorderWidth="5px" ForeColor="Firebrick" ReadOnly="True"></asp:TextBox><br />
              <asp:Label ID="lblQuote" runat="server" Font-Bold="True" Font-Size="Larger" BorderStyle="Outset" ForeColor="Firebrick"></asp:Label>


        </div>

    </div>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
    
        'use strict';

     
        $.backstretch(
        [
            "img/home.jpg",
            
        ],

        {
            duration: 4500,
            fade: 1500
        }
    );
    </script>
        <p>
              &nbsp;</p>
    </form>
</body>
</html>
