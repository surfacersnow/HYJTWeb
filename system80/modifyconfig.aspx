<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyconfig.aspx.cs" Inherits="Admin_modifyconfig" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="css.css" rel="stylesheet" type="text/css" />
    <script src="../../ckeditor/ckeditor.js"></script>
<link href="../../ckeditor/samples/sample.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;修改网站配置信息：<br />
        <br />
        <table style="width: 100%; line-height: 30px">
            <tr>
                <td style="width: 20%; text-align: center;" class="bx">
                    网站名称：</td>
                <td style="width: 80%; text-align: left;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="656px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%; text-align: center;" class="bx">
                    网站标题：</td>
                <td style="width: 80%; text-align: left;">
                    <asp:TextBox ID="TextBox2" runat="server" Width="656px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%; text-align: center;" class="bx">
                    网站描述：</td>
                <td style="width: 80%; text-align: left;">
                    <asp:TextBox ID="TextBox3" runat="server" Height="95px" TextMode="MultiLine" Width="656px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%; text-align: center;" class="bx">
                    网站关键词：</td>
                <td style="width: 80%; text-align: left;">
                    <asp:TextBox ID="TextBox4" runat="server" Width="656px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="bx" style="width: 20%; text-align: center">
                    网站底部信息：</td>
                <td class="tbx" style="width: 80%; text-align: left">
                    
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
                <td class="bx" style="width: 20%; text-align: center">
                    网站地址：</td>
                <td class="tbx" style="width: 80%; text-align: left">
                    <asp:TextBox ID="TextBox6" runat="server" Width="278px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%">
                </td>
                <td style="width: 80%; text-align: left;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="保存" />
                    <asp:Button ID="Button2" runat="server" Text="取消" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
