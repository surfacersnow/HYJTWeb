﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
public partial class ckbook : System.Web.UI.Page
{
    DAL dl = new DAL();
    OleDbConnection mc = DAL.Creation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //dt = dl.GetDataSet("select * from ck_feedback where flag='ch' order by Id desc", "ck_feedback");

            //显示分类产品
            bind1();
            bind2();

        }
    }
    public void bind1()
    {
        OleDbCommand cmd = new OleDbCommand("select count(Id) from ck_feedback where fg='en' and flag='是'", mc);
        mc.Open();
        AspNetPager1.RecordCount = (int)cmd.ExecuteScalar();
        mc.Close();
    }
    public void bind2()
    {

        OleDbDataAdapter oda = new OleDbDataAdapter("select * from ck_feedback where fg='en'and flag='是' order by Id desc", mc);
        DataSet ds = new DataSet();
        oda.Fill(ds, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "ck_feedback");
        rp_book.DataSource = ds;
        rp_book.DataBind();

    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind2();
    }
}
