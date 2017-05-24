<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEnNews.aspx.cs" Inherits="system80_News_AddEnNews" %>

<%@ Register src="fentop.ascx" tagname="fentop" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
        <link href="css.css" text/css" rel="Stylesheet" />
        <link href ="images/m1.css" rel ="Stylesheet" />
    <script src="../../ckeditor/ckeditor.js"></script>
<link href="../../ckeditor/samples/sample.css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 196px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:fentop ID="fentop1" runat="server" />
    
        <table class="style1">
            <tr>
                <td class="bx" colspan="2">
                    添加英文网站新闻信息</td>
            </tr>
            <tr>
                <td class="bx">
                    新闻标题：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="703px"></asp:TextBox>
                &nbsp; 标题不能为空 *</td>
            </tr>
            <tr>
                <td class="bx">
                    新闻分类：</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    发布人：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="146px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="bx">
                    详细信息：</td>
                <td>
                    <asp:TextBox ID="txtContents" runat="server" Width="90%" Height="100%" TextMode="MultiLine" CssClass="ckeditor"></asp:TextBox>

                                <script>
                                    CKEDITOR.replace('txtContents',
                        {
                            language: 'zh-cn',
                            uiColor: '#9AB8F3',
                            filebrowserBrowseUrl: '/ckfinder/ckfinder.html',
                            filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?type=Images',
                            filebrowserFlashBrowseUrl: '/ckfinder/ckfinder.html?type=Flash',
                            filebrowserUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files',
                            filebrowserImageUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Images',
                            filebrowserFlashUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash',
                            filebrowserWindowWidth: '1000',
                            filebrowserWindowHeight: '700'
                        });
                                </script>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="清空" />
&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

