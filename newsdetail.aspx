﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsdetail.aspx.cs" Inherits="newsdetail" %>

<%@ Register Src="com/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="com/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register src="com/newsclass.ascx" tagname="newsclass" tagprefix="uc3" %>
<%@ Register src="com/tuijian.ascx" tagname="tuijian" tagprefix="uc4" %>
<%--<%@ Register Src="com/About.ascx" TagName="About" TagPrefix="uc2" %>
<%@ Register Src="com/lxwm.ascx" TagName="lxwm" TagPrefix="uc3" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <title>无标题页</title>
    <link href ="images/css.css" type ="text/css" rel="stylesheet" />
</head>
<body style="background-color:aliceblue">
    <form id="form1" runat="server">
    <div style="text-align: left">
     <uc1:top ID="Top1" runat="server" />
    <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
      <td style="wdith:250px"  valign="top"><uc3:newsclass ID="newsclass1" 
                    runat="server" />
                    <uc4:tuijian ID="tuijian1" runat="server" /></td>
    <%--<td width="220" bgcolor="#EEF2FA"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line">
      <tr>
        <td width="100%" valign="top">
            <uc2:About ID="About1" runat="server" />
        </td>
      </tr>
    </table>
	<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="line2">
      <tr>
        <td width="100%" valign="top">
            <uc3:lxwm ID="Lxwm1" runat="server" />
        </td>
      </tr>
    </table>
	</td>--%>
    <td width="760"><table width="100%" height="500" border="0" cellpadding="0" cellspacing="0" id="Table1">
      <tr>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="background:#DEE7F9">
          <tr>
            <td><div id="lat">当前位置：<a href="index.aspx">首 页</a> &gt;新闻中心 &gt;<asp:Label ID="Label1" runat="server">正文</asp:Label>
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
  <uc1:foot ID="Foot1" runat="server" />
    </div>
    </form>
</body>
</html></body>
</html>
