﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mobile Shop</title><link href="userStyle.css" rel="stylesheet" type="text/css" /><link rel="stylesheet" type="text/css" href="engine1/style.css" media="screen" />
	<style type="text/css">a#vlb{display:none}
        .style1
        {
            width: 100%;
        }
    </style>
	<script type="text/javascript" src="engine1/jquery.js"></script>
    <script language="javascript" type="text/javascript">        function wows0_onclick() {

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="top">
     
        <asp:Image ID="Image3" runat="server" ImageUrl="~/admin/mlogo.jpg" />

       </div>  <div id="menuu">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Width="100%" 
            onmenuitemclick="Menu1_MenuItemClick">
            <DynamicMenuItemStyle CssClass="dmenu" />
            <Items>
                <asp:MenuItem Text="HOME" Value="HOME" NavigateUrl="~/Default.aspx"></asp:MenuItem>
                <asp:MenuItem Text="LOGIN" Value="LOGIN" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                <asp:MenuItem Text="REGISTER" Value="PRODUCT" NavigateUrl="~/Registration.aspx"></asp:MenuItem>
                <asp:MenuItem Text="FEEDBACK" Value="FEEDBACK" NavigateUrl="~/Feedback.aspx"></asp:MenuItem>
                <asp:MenuItem Text="CONTACTUS" Value="CONTACTUS" 
                    NavigateUrl="~/Contact us.aspx"></asp:MenuItem>
            </Items>
            <StaticMenuItemStyle CssClass="smenu" />
        </asp:Menu>
    </div><%--<div id="menu">
       
        <table class="style2">
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="HOME" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Home.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="SIGN UP" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Registration.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="LOGIN" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Login.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="PRODUCT" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/PRODUCT.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="FEEDBACK" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Feedback.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button8" runat="server" Text="CONTACT US" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Contact us.aspx" />
                </td>
            </tr>
        </table>
 </div>--%>
 

 
    <div id="second">
       
      
       <div id="slide1">
           <table class="tbl">
               <tr>
                   <td class="tblhead">
                       Member Login</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       <table class="style1">
                           <tr>
                               <td class="lbl">
                                   UserName :</td>
                               <td>
                                   <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="lbl">
                                   Password :</td>
                               <td>
                                   <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Login" 
                                       onclick="btnlogin_Click1" />
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   <asp:LinkButton ID="LinkButton1" runat="server" 
                                       PostBackUrl="~/Registration.aspx">New User ?</asp:LinkButton>
                               </td>
                           </tr>
                       </table>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="lbll" runat="server"></asp:Label>
                   </td>
               </tr>
           </table>
           <br />
           <table class="tbl">
               <tr>
                   <td class="tblhead">
                       SEARCH PRODUCT :</td>
               </tr>
               <tr>
                   <td>
                       
                      
                       <table class="style1">
                           <tr>
                               <td>
                                  <asp:TextBox ID="txtsearch" runat="server" CssClass="txt" Width="180px"></asp:TextBox></td>
                               <td>
                                   <asp:Button ID="btnsearc" runat="server" CssClass="btn" Text="Search" 
                                       onclick="btnsearc_Click" Width="80px" /></td>
                           </tr>
                       </table>
                   </td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
               </tr>
           </table>
        </div> <div id="slide"><div id="wowslider-container1">
	<div class="ws_images">
<a href="#"><img src="data1/images/12.jpg" alt="" title="" id="wows0" onclick="return wows0_onclick()" /></a>
<a href="#"><img src="data1/images/6.jpg" alt="" title="" id="wows1"/></a>
<a href="#"><img src="data1/images/5.jpg" alt="" title="" id="wows2"/></a>
<a href="#"><img src="data1/images/13.jpg" alt="" title="" id="wows3"/></a>
<a href="#"><img src="data1/images/7.jpg" alt="" title="" id="wows4"/></a>
<a href="#"><img src="data1/images/9.jpg" alt="" title="" id="wows5"/></a>
</div>
<div class="ws_bullets"><div>
<a href="#wows0" title=""><img src="data1/tooltips/12.jpg" alt=""/>1</a>
<a href="#wows1" title=""><img src="data1/tooltips/6.jpg" alt=""/>2</a>
<a href="#wows2" title=""><img src="data1/tooltips/5.jpg" alt=""/>3</a>
<a href="#wows3" title=""><img src="data1/tooltips/13.jpg" alt=""/>4</a>
<a href="#wows4" title=""><img src="data1/tooltips/7.jpg" alt=""/>5</a>
<a href="#wows5" title=""><img src="data1/tooltips/9.jpg" alt=""/>6</a>
</div></div>

	</div>
	<script type="text/javascript" src="engine1/script.js"></script></div>
        <%--    <div id="login">
          <table class="style2">
              <tr>
                  <td width="45%">
                      <table class="style3">
                          <tr>
                              <td>
                                  SEARCH HERE :</td>
                              <td>
                                 <asp:TextBox ID="txtsearch" runat="server" CssClass="txt" Width="180px"></asp:TextBox></td>
                              <td>
                                   <asp:Button ID="Button2" runat="server" Text="Search" onclick="Button2_Click" 
                                       Width="78px" CssClass="btn" CausesValidation="False" /></td>
                          </tr>
                      </table>
                  </td>
                  <td>
                      <table class="style4">
                          <tr>
                              <td style="text-align: right">
                                  UserName :</td>
                              <td>
                                 <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox></td>
                              <td style="text-align: right">
                                  Password :</td>
                              <td>
                                 <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox></td>
                              <td>
                                   <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Login" 
                        onclick="btnlogin_Click" CausesValidation="False" />
                                   <asp:Label ID="lbll" runat="server" ForeColor="Red"></asp:Label>
                              </td>
                          </tr>
                      </table>
                  </td>
              </tr>
          </table>
        </div>--%>
   

    <div id="main">
        <div id="item">

            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
                RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand1">
                <ItemTemplate>
                    <table style="border: thin solid #369" width="199">
                        <tr>
                            <td height="30" 
                                style="color: #369; font-weight: bold; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #369;">
                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("iname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image4" runat="server" Height="135px" 
                                    ImageUrl='<%#Eval("image") %>'  style="text-align: center" 
                                    Width="90px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #339966">
                                <asp:Button ID="Button9" runat="server" CommandArgument='<%#Eval("iid") %>' 
                                    CssClass="btnmenu" Height="30px" Text="Buy Now !" Width="193px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div> </div>
     <div id="foot">All Rights Reserved @online Mobile Shop</div>
    </form>
</body>
</html>
