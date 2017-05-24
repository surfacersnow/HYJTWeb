using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

/// <summary>
/// CommonOP 的摘要说明
/// </summary>
public static class CommonOP
{

    public static void WriteLog(string txt)
    {
        string dateStr = DateTime.Now.ToString("yyyyMMdd");
        string strFilePath = @"C:\\WebLog\\";
        string fileName = dateStr + "WebLog.log";
        WriteLog(txt, strFilePath, fileName);
    }


    public static void  WriteLog(string txt, string path, string fileName)
    {
        //日志文件位置
        if (!Directory.Exists(path))
            System.IO.Directory.CreateDirectory(path);

        //当前时间
        string curTime = DateTime.Now.ToString();

        System.IO.FileStream fs = new System.IO.FileStream(path + fileName, System.IO.FileMode.Append);
        System.IO.StreamWriter sw = new System.IO.StreamWriter(fs, System.Text.Encoding.Default);
        try
        {
            sw.WriteLine(curTime);
            sw.WriteLine(txt);
        }
        finally
        {
            sw.Close();
            fs.Close();
        }
    }
}