<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="system80_News" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href ="images/M1.css" type ="text/css" rel="Stylesheet" />
    <script src="../../ckeditor/ckeditor.js"></script>
    <link href="../../ckeditor/samples/sample.css" rel="stylesheet" />

    <style type="text/css">
        .style1
        {
            width: 800px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table class="style1" style="border: 1px solid #000080"  align="center">
        <tr>
            <td colspan="2" class="bx">
                <asp:Label ID="Label1" runat="server" CssClass="bx" Text="添加新闻"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="bx" width="200px">
                新闻标题：</td>
            <td width="700px">
                <asp:TextBox ID="TextBox1" runat="server" Width="681px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="bx" width="200px">
                请选择中英文：</td>
            <td width="700px">
                <asp:DropDownList ID="ddlProvince" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlProvince_SelectedIndexChanged">
                </asp:DropDownList>
            &nbsp;&nbsp; *ch：中文网站， en：英文网站 请选择语言类别！</td>
        </tr>
        <tr>
            <td class="bx" width="200px">
                选择新闻分类：</td>
            <td width="700px">
                <asp:DropDownList ID="ddlCity" runat="server" 
                    ontextchanged="ddlCity_TextChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td   class="bx" width="200px" valign="top">
                新闻内容：</td>
            <td width="700px">

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
            <td class="bx" width="200px">
                当前新闻时间：</td>
            <td width="700px">
                <asp:TextBox ID="TextBox2" runat="server" Width="174px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  class="bx" width="200px">
                发布人：</td>
            <td width="700px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="bx" width="200px">
                &nbsp;</td>
            <td class="bx" width="200px">
                <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="修改" />
&nbsp;
                <asp:Button ID="Button3" runat="server" Text="取消" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
