<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abt.aspx.cs" Inherits="system80_abt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../ckeditor/ckeditor.js" type="text/javascript"></script>
    <link href="../ckeditor/samples/sample.css" rel="stylesheet" />
    <%--<script src="../js/ueditor-1.4.3.3/ueditor.config.js" type="text/javascript" language="javascript"></script>
    <script src="../js/ueditor-1.4.3.3/_examples/editor_api.js" type="text/javascript" language="javascript"></script>--%>
    <link href ="images/m1.css" rel ="Stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 230px;
        }
    </style>
<%--   <script language="javascript" type="text/javascript">
       function storeContent() {
           var strValue = UE.getEditor('myEditor').getContent();
           debugger;
           document.getElementById("HiddenField1").value = strValue;
       }
       function loadContent(isAppendTo) {
           var content = document.getElementById("HiddenField1").value;
           UE.getEditor('myEditor').setContent(content, isAppendTo);
       }
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;标题：&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="分类名称："></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="中/英文"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="ch">中文</asp:ListItem>
                        <asp:ListItem Value="en">英文</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    详细内容：</td>
                <td>
                    <%--<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="300px">
                    </FCKeditorV2:FCKeditor>--%>


                    <%--<script type="text/plain" id="myEditor">
        <p>这里我可以写一些输入提示</p>
    </script>--%>

    <%--<script type="text/javascript">
        //enableBtn();
        UE.getEditor('myEditor', {
            //这里可以选择自己需要的工具按钮名称,此处仅选择如下五个
            //toolbars: [['FullScreen', 'Source', 'Undo', 'Redo', 'Bold', 'test']],
            //focus时自动清空初始化时的内容
            autoClearinitialContent: false,
            //关闭字数统计
            wordCount: true,
            //关闭elementPath
            elementPathEnabled: false,
            //默认的编辑区域高度
            initialFrameHeight: 300
            //更多其他参数，请参考ueditor.config.js中的配置项
        });
    </script>--%>

                    <%--<asp:HiddenField ID="HiddenField1" runat="server" />--%>








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
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="保存" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;<a href ="javascript:history.back(-1)">【返回】</a>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    
    </div>


         
    </form>
</body>
</html>
