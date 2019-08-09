﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace 图书管理系统
{
    public partial class BookExcelWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.AllowPaging = true;
            GridView1.PageSize = 10;
            GridView1.AllowSorting = true;
            if (!IsPostBack)
            {
                bang();
            }
        }
        public void bang()
        {
            DropDownList grid;
            Bll.BookTable books = new Bll.BookTable();
            DataTable da = books.select("");
            GridView1.DataSource = da;
            GridView1.DataKeyNames = new string[] { "BookId" };
            GridView1.DataBind();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                DataRowView mydiv = da.DefaultView[i];
                grid = (DropDownList)GridView1.Rows[i].FindControl("DropDownList2");
                grid.Text = da.Rows[i]["BookPress"].ToString();
                grid.Enabled = false;
                grid = (DropDownList)GridView1.Rows[i].FindControl("DropDownList1");
                grid.Text = da.Rows[i]["BookCategory"].ToString();
                grid.Enabled = false;
                //grid.SelectedIndex = grid.Items.IndexOf(grid.Items.FindByText(da.Rows[i]["BookPress"].ToString()));
            }


        }
        public SqlDataReader bbang()
        {
            Bll.PressTable press = new Bll.PressTable();
            return press.aselect("");
        }
        public SqlDataReader bbbang()
        {
            Bll.CategoryTable cate = new Bll.CategoryTable();
            return cate.aselect("");
        }
        protected void labelzc_Click(object sender, EventArgs e)
        {
            //导出全部数据，取消分页
            GridView1.AllowPaging = false;
            GridView1.ShowFooter = false;
            bang();


            //Response.Clear();
            //Response.Buffer = true;
            //Response.Charset = "utf-8";//设置输入文件流的字符集
            ////设置编码方式为UTF7
            //Response.AppendHeader("Content-Disposition", "attachment;filename=" + System.Web.HttpUtility.UrlEncode("导出" + System.DateTime.Now.Date.ToString("yyyyMMdd")) + ".xls");
            //Response.ContentEncoding = System.Text.Encoding.GetEncoding("utf-8");//设置输出流为简体中文

            //Response.ContentType = "application/ms-excel";//设置输出文件类型为excel文件。 
            //this.EnableViewState = false;//响应不储存与ViewState中
            //System.Globalization.CultureInfo myCItrad = new System.Globalization.CultureInfo("ZH-CN", true);
            //System.IO.StringWriter oStringWriter = new System.IO.StringWriter(myCItrad);//实例化HTML字符流写入器
            ////将GridView中所有的数据和格式转化为HTML代码，并写入至HTML字符流写入器
            //System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
            //ClearControls(GridView1);//清除GridView中的所有控件
            //this.GridView1.RenderControl(oHtmlTextWriter);
            //Response.Write(oStringWriter.ToString());   //在响应中输出GridView控件的HTML代码
            //Response.End();//停止响应
            Export("application/ms-excel", "图书信息表.xls");

            //还原分页显示
            GridView1.AllowPaging = true;
            GridView1.ShowFooter = true;
            bang();
        }
        /// GridView如果需要实现导出Excel功能，则该函数需要重载
        /// </summary>
        /// <param name="control"></param>
        public override void VerifyRenderingInServerForm(Control control)
        {
            // Confirms that an HtmlForm control is rendered for
        }

        ///<summary>
        ///导出Excel主函数
        /// <summary>
        /// <param name="control"></param>
        private void Export(string FileType, string FileName)
        {
            Response.Charset = "GB2312";//设置输入文件流的字符集
            Response.ContentEncoding = System.Text.Encoding.UTF7; //设置编码方式为UTF7
            Response.AppendHeader("Content-Disposition", "attachment;filename=" + HttpUtility.UrlEncode(FileName, System.Text.Encoding.UTF8).ToString());
            Response.ContentType = FileType;//设置输出文件类型为excel文件。
            this.EnableViewState = false;//响应不储存与ViewState中
            System.IO.StringWriter tw = new System.IO.StringWriter();//实例化HTML字符流写入器
            //将GridView中所有的数据和格式转化为HTML代码，并写入至HTML字符流写入器
            System.Web.UI.HtmlTextWriter hw = new System.Web.UI.HtmlTextWriter(tw);
            ClearControls(GridView1);//清除GridView中的所有控件
            this.GridView1.RenderControl(hw);
            Response.Write(tw.ToString());   //在响应中输出GridView控件的HTML代码
            Response.End();//停止响应
        }
        /// <summary>
        /// 清除控件中的所有控件，以便导出Excel
        /// </summary>
        /// <param name="control"></param>
        private void ClearControls(Control control)
        {
            for (int i = control.Controls.Count - 1; i >= 0; i--)
            {
                ClearControls(control.Controls[i]);
            }

            if (!(control is TableCell))
            {
                if (control.GetType().GetProperty("SelectedItem") != null)
                {
                    LiteralControl literal = new LiteralControl();
                    control.Parent.Controls.Add(literal);
                    try
                    {
                        literal.Text = (string)control.GetType().GetProperty("SelectedItem").GetValue(control, null);
                    }
                    catch
                    {
                    }
                    control.Parent.Controls.Remove(control);
                }
                else if (control.GetType().GetProperty("Text") != null)
                {
                    LiteralControl literal = new LiteralControl();
                    control.Parent.Controls.Add(literal);
                    literal.Text = (string)control.GetType().GetProperty("Text").GetValue(control, null);
                    control.Parent.Controls.Remove(control);
                }
            }
            return;
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //鼠标经过时，行背景色变 
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#E6F5FA'");
                //鼠标移出时，行背景色变 
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#FFFFFF'");
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[3].Attributes.Add("style", "vnd.ms-escel.numberformat:￥#,###.00");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
    }
}
