﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Data.SqlClient;
/// <summary>
/// DAL 的摘要说明
/// </summary>
public class DAL
{
      OleDbDataAdapter adapt;    //填充数据集  
    DataSet ds;
    SqlDataAdapter sqldapt;
	public DAL()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
  ///过滤非法字符
  ///如下所示
    public static string cutBadStr(string inputStr)
    {
        inputStr = inputStr.ToLower().Replace(",", "");
        inputStr = inputStr.ToLower().Replace("<", "");
        inputStr = inputStr.ToLower().Replace(">", "");
        inputStr = inputStr.ToLower().Replace("%", "");
        inputStr = inputStr.ToLower().Replace(".", "");
        inputStr = inputStr.ToLower().Replace(":", "");
        inputStr = inputStr.ToLower().Replace("#", "");
        inputStr = inputStr.ToLower().Replace("&", "");
        inputStr = inputStr.ToLower().Replace("$", "");
        inputStr = inputStr.ToLower().Replace("^", "");
        inputStr = inputStr.ToLower().Replace("*", "");
        inputStr = inputStr.ToLower().Replace("`", "");
        inputStr = inputStr.ToLower().Replace(" ", "");
        inputStr = inputStr.ToLower().Replace("~", "");
        inputStr = inputStr.ToLower().Replace("or", "");
        inputStr = inputStr.ToLower().Replace("and", "");
        inputStr = inputStr.ToLower().Replace("'", "");
        //以上的意思为前者被后者代替，比如and代替为空，<代替为：&glt;
        return inputStr;

    }
    /// <summary>
    /// 创建access数据库连接
    /// </summary>
    /// <returns></returns>
    public static OleDbConnection Creation()
    {
        return new OleDbConnection(ConfigurationManager.AppSettings["AccessConnectionString"]);
    }
    ///<summary>
    /// 创建SQL数据库存连接
    /// <returns  ></returns>
    /// </summary>
    public static SqlConnection SqlCreation()
    {
        return new SqlConnection(ConfigurationManager.AppSettings["SqlConnectionString"]);
    }
    ///<summary>
    /// Access数据库SQL语句执行；
    /// </summary>
    public void ExecuteSQL(string strSQL)
    {
        using (OleDbConnection conn = new OleDbConnection(ConfigurationManager.AppSettings["AccessConnectionString"]))
        {
            try
            {
                conn.Open();
                OleDbCommand cmd = new OleDbCommand(strSQL, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception err)
            {
                throw new Exception(err.Message, err);
            }
            finally
            {
                conn.Dispose();
                conn.Close();
            }
        }
    }
    ///<summary>
    /// SQLserver数据库执行一条命令;
    /// </summary>
    public void SqlExecuteSQL(string txtSql)
    {
        using (SqlConnection myconn = new SqlConnection(ConfigurationManager.AppSettings["SqlConnectionString"]))
        {
            try
            {
                myconn.Open();
                SqlCommand sqlcmd = new SqlCommand(txtSql, myconn);
                sqlcmd.ExecuteNonQuery();
                myconn.Close();
            }
            catch (Exception sqlerr)
            {
                throw new Exception(sqlerr.Message, sqlerr);
            }
            finally
            {
                myconn.Dispose();
                myconn.Close();
            }
        }
    }
    /// <summary>    
    /// 返回一个值    
    /// </summary>    
    /// <param name="strSql">sqlStr执行的SQL语句</param>    
    /// <returns>返回获取的值</returns>    
    public string ExecScalar(string strSql)
    {
        using (OleDbConnection conn = new OleDbConnection(ConfigurationManager.AppSettings["AccessConnectionString"]))
        {
            try
            {
                conn.Open();
                OleDbCommand cmdstr = new OleDbCommand(strSql);
                strSql = Convert.ToString(cmdstr.ExecuteScalar());
                return strSql;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message, err);
            }
            finally
            {
                conn.Dispose();
                conn.Close();
            }
        }
    }
    /// <summary>    
    /// 说  明：  GetDataSet数据集，返回数据源的数据表    
    /// 返回值：  数据源的数据表    
    /// 参  数：  sqlStr执行的SQL语句，TableName 数据表名称    
    /// </summary>    
    public DataTable GetDataSet(string strSql, string TableName)
    {
        ds = new DataSet();
        //using (OleDbConnection conn = new OleDbConnection(ConfigurationManager.AppSettings["AccessConnectionString"]))
        string connString = ConfigurationManager.AppSettings["AccessConnectionString"];
        using (OleDbConnection conn = new OleDbConnection(connString))
        {

            try
            {
                conn.Open();//与数据库连接    
                adapt = new OleDbDataAdapter(strSql, conn); //实例化SqlDataAdapter类对象    
                adapt.Fill(ds, TableName);//填充数据集    
                return ds.Tables[TableName];//返回数据集DataSet的表的集合    
                CommonOP.WriteLog(conn.ToString());
            }
            catch (Exception ex)
            {
                CommonOP.WriteLog(ex.Message);
                CommonOP.WriteLog(ex.ToString());
                throw new Exception(ex.Message, ex);

            }
            finally
            {//断开连接，释放资源    
                conn.Dispose();

                adapt.Dispose();
                conn.Close();
            }
        }
    }
    ///<summary>
    /// 说明：　SqlGetDataSet数据集为SQL版数据集只能调用SQLSERVER数据；
    /// 返回值：数据表；
    /// </summary>
    public DataTable SqlGetDataSet(string StrTxtSql, string SqlTableName)
    {
        ds = new DataSet();
        using (SqlConnection myconn = new SqlConnection(ConfigurationManager.AppSettings["SqlConnectionString"]))
        {
            try
            {
                myconn.Open();
                sqldapt = new SqlDataAdapter(StrTxtSql, myconn);
                sqldapt.Fill(ds, SqlTableName);
                return ds.Tables[SqlTableName];//返回数据集，前台调用时，直接不用再初始化;不用再New了。
            }
            catch (Exception er)
            {
                throw new Exception(er.Message, er);
            }
            finally
            {
                myconn.Dispose();
                sqldapt.Dispose();
                myconn.Close();
            }
        }
       
    }
    ///<summary>
    /// 说明：留言时按照标准形式显示留言格式；即格式化文本
    /// </summary>
    /// 
    public static  string  FormatString(string str)
    {
        str = str.Replace(" ", "&nbsp;&nbsp");//控制格式含数
        str = str.Replace("<", "&lt;");
        str = str.Replace(">", "&glt;");
        str = str.Replace('\n'.ToString(), "<br>");
        return str;
    }
    ///<!--MD5验证-->
    public static string Md5(string strText)
    {
        return FormsAuthentication.HashPasswordForStoringInConfigFile(strText.Trim(), "md5");
    }
    
}
