using System;
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
    public partial class BookAdminWeb : System.Web.UI.Page
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
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookInsertWeb.aspx");
        }
        //鼠标移到GridView某一行时改变该行的背景色方法
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
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    ((LinkButton)e.Row.Cells[9].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"吗?')");
                }
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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bang();
            DropDownList grid;
            //for (int i = 0; i < GridView1.Rows.Count; i++)
            //{
            //    grid = (DropDownList)GridView1.Rows[i].FindControl("DropDownList2");
            //    grid.Enabled = true;
            //    grid = (DropDownList)GridView1.Rows[i].FindControl("DropDownList1");
            //    grid.Enabled = true;

            //    GridView1.Rows[i].Cells[0].Enabled = false;
            //    GridView1.Rows[i].Cells[5].Enabled = false;
            //    GridView1.Rows[i].Cells[6].Enabled = false;
            //    GridView1.Rows[i].Cells[7].Enabled = false;
            //    //grid.SelectedIndex = grid.Items.IndexOf(grid.Items.FindByText(da.Rows[i]["BookPress"].ToString()));
            //}
            grid = (DropDownList)GridView1.Rows[e.NewEditIndex].FindControl("DropDownList2");
            grid.Enabled = true;
            grid = (DropDownList)GridView1.Rows[e.NewEditIndex].FindControl("DropDownList1");
            grid.Enabled = true;
            GridView1.Rows[e.NewEditIndex].Cells[0].Enabled = false;
            GridView1.Rows[e.NewEditIndex].Cells[5].Enabled = false;
            GridView1.Rows[e.NewEditIndex].Cells[6].Enabled = false;
            GridView1.Rows[e.NewEditIndex].Cells[7].Enabled = false;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string jiechu = GridView1.Rows[e.RowIndex].Cells[6].Text.Trim();
            string yuyue = GridView1.Rows[e.RowIndex].Cells[7].Text.Trim();
            if (jiechu == "否")
            {
                if (yuyue == "否")
                {
                    bool shanchu = false;
                    Bll.BookTable books = new Bll.BookTable();
                    shanchu = books.delete(GridView1.DataKeys[e.RowIndex].Value.ToString());
                    if (shanchu)
                    {
                        Response.Write("<script>alert('删除成功');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('删除失败');</script>");
                    }
                    bang();
                }
                else
                {
                    Response.Write("<script>alert('此书已被预约，不允许删除');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('此书已借出，不允许删除');</script>");

            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Bll.BookTable books = new Bll.BookTable();
            Model.BookTable Mbook = new Model.BookTable();
            Mbook.BookName = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
            Mbook.BookPrice = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
            Mbook.BookPress = ((DropDownList)(GridView1.Rows[e.RowIndex].Cells[4].Controls[1])).Text.ToString().Trim();
            Mbook.BookCategory = ((DropDownList)(GridView1.Rows[e.RowIndex].Cells[3].Controls[1])).Text.ToString().Trim();
            Mbook.BookLendDate = Convert.ToDateTime(((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim());
            Mbook.BookynLend = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text.ToString().Trim();
            Mbook.BookynMake = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[7].Controls[0])).Text.ToString().Trim();
            books.update(Mbook, int.Parse(((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text.ToString().Trim()));
            GridView1.EditIndex = -1;
            bang();
            //books.update();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bang();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bang();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
