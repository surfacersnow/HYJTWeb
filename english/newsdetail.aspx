﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsdetail.aspx.cs" Inherits="newsdetail" %>

<%@ Register src="../com/en/enTop.ascx" tagname="enTop" tagprefix="uc4" %>
<%@ Register src="../com/en/enAbout.ascx" tagname="enAbout" tagprefix="uc5" %>
<%@ Register src="../com/en/lxwm.ascx" tagname="lxwm" tagprefix="uc6" %>
<%@ Register src="../com/foot.ascx" tagname="foot" tagprefix="uc1" %>
<%@ Register src="../com/en/newsclass.ascx" tagname="newsclass" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <title>无标题页</title>
    <link href ="../images/css.css" type ="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left">
        <uc4:enTop ID="enTop1" runat="server" />
    <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td width="220" bgcolor="#EEF2FA"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
      <tr>
        <td width="100%" valign="top">
            <uc5:enAbout ID="enAbout1" runat="server" />
        </td>
      </tr>
    </table>
    <table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
      <tr>
        <td width="100%" valign="top">
           <uc2:newsclass ID="newsclass1" runat="server" />
        </td>
      </tr>
    </table>
	<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line2">
      <tr>
        <td width="100%" valign="top">
            <uc6:lxwm ID="lxwm1" runat="server" />
        </td>
      </tr>
    </table>
	</td>
    <td width="760"><table width="100%" height="500" border="0" cellpadding="0" cellspacing="0" id="Table1">
      <tr>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="background:#DEE7F9">
          <tr>
            <td><div id="lat">当前位置：<a href="/">HomePage</a> &gt;NewsCenter &gt;<asp:Label ID="Label1" runat="server" Text="NewsTitle"></asp:Label>
                                                </div></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="title"><asp:Label ID ="lbl_title" runat ="server" ></asp:Label></div><div align="center" style ="height:20px; padding:5px 0px 5px 0px">作者：<asp:Label 
                      ID="Label2" runat="server" Text=""></asp:Label>
&nbsp; 发布日期： 
                  <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
       </div></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div id="body">
          <asp:Label ID ="lbl_con" runat ="server" ></asp:Label>
                  <br />
                </div></td>
            </tr>
          </table></td>
      </tr>
    </table></td>
  </tr>
</table>
            <uc1:foot ID="foot2" runat="server" />
    </div>
    </form>
</body>
</html></body>
</html>
