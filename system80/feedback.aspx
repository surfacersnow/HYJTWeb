﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="system80_feedback" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
            <link href="css.css"  type="text/css" rel="Stylesheet" />
        <link href ="images/m1.css" rel ="Stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    留言管理</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                        <Columns>
                        <asp:TemplateField><HeaderTemplate>全选</HeaderTemplate> <ItemTemplate><asp:CheckBox ID ="CheckBox1" runat ="server"  Text ="" /></ItemTemplate></asp:TemplateField>
                            <asp:BoundField DataField="Id" HeaderText="留言编号" />
                            <asp:BoundField DataField="Title" HeaderText="留言标题" />
                            <asp:BoundField DataField="Author" HeaderText="留言人" />
                          
                            <asp:BoundField DataField="fg" HeaderText="留言来源" />
                            <asp:BoundField DataField="addtime" HeaderText="添加时间" />
                            <asp:BoundField DataField="flag" HeaderText="前台是否显示" />
                          
                    <asp:TemplateField><HeaderTemplate>查看详细信息</HeaderTemplate><ItemTemplate><a href ='feed.aspx?id=<%#Eval("Id")%>&action=news'>查看详细信息</a></ItemTemplate></asp:TemplateField>
                                                        </Columns>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    </td>
            </tr>
            <tr>
                <td>
                     <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"
                            Text="全选 " />
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="删除所选"  OnClientClick="javascript:return confirm('确定删除吗？')"/>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" />
                    <br />
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" 
                        CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条" 
                        FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                        onpagechanging="AspNetPager1_PageChanging" PrevPageText="上一页" 
                        ShowCustomInfoSection="Left" ShowPageIndexBox="Always" SubmitButtonText="Go" 
                        TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到">
                    </webdiyer:AspNetPager>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
