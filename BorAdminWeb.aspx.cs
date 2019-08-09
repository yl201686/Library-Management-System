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

namespace 图书管理系统
{
    public partial class BorAdminWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
                this.bind();
            this.SortType = "ASC";//设定数据排序方式
        }
        public void bind()
        {
            Bll.BorTable bBor = new Bll.BorTable();
            this.GridView1.DataSource = bBor.select("");
            this.GridView1.DataKeyNames = new string[] { "ID" };
            this.GridView1.DataBind();
        }
        public Model.BorTable Mrt = new Model.BorTable();
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.GridView1.PageIndex = e.NewPageIndex;
            this.bind();
           
        }
        protected string SortType//将当前数据排序的顺序储存至ViewState中
        {
            get
            {
                return this.ViewState["SortType"].ToString();
            }
            set
            {
                this.ViewState["SortType"] = value;
            }
        }
        protected DataTable BindTable//将数据存入ViewState中
        {
            get
            {
                return (ViewState["BindTable"] as DataTable);
            }
            set
            {
                ViewState["BindTable"] = value;
            }
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.GridView1.EditIndex = -1;
            this.bind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "if(this!=null){oldcolor=this.style.backgroundColor;this.style.backgroundColor='skyblue'}");
                e.Row.Attributes.Add("onmouseout", "if(this!=null){this.style.backgroundColor=oldcolor}");
                e.Row.Attributes.Add("onclick", "selectx(this);");
                e.Row.Cells[3].Attributes.Add("onclick", "return confirm('你确定要删除该行数据吗？');");
            }
         
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Bll.BorTable bBor = new Bll.BorTable();
            bBor.delete(GridView1.Rows[e.RowIndex].Cells[0].Text);
            this.bind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // txtCategory.Text = this.GridView1.Rows[e.NewEditIndex].Cells[1].Text;
            this.GridView1.EditIndex = e.NewEditIndex;
            this.bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Bll.BorTable bBor = new Bll.BorTable();
            Model.BorTable mBor = new Model.BorTable();
            mBor.ID = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text.Trim());
            mBor.BorId = Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim());
            mBor.BorName = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
            mBor.BorClass = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim();
            mBor.BorTitle = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim();
            mBor.BorLoss = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim();
            mBor.BorPassword = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text.ToString().Trim();
            bBor.update(mBor, GridView1.Rows[e.RowIndex].Cells[0].Text.Trim());
            GridView1.EditIndex = -1;
            this.bind();
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            //DataView view = this.BindTable.DefaultView;//获取数据表的默认视图
            //view.Sort = string.Format("{0} {1}", e.SortExpression, this.SortType);//将试图中的数据排序
            //this.GridView1.DataSource = view;//GridView1控件使用排序后的视图作为数据源
            //this.GridView1.DataBind();
            //this.SortType = this.SortType == "ASC" ? "DESC" : "ASC";//更换排序顺序
            DataView view = this.BindTable.DefaultView;
            view.Sort = string.Format("{0}{1}", e.SortExpression, this.SortType);
            this.GridView1.DataSource = view;
            this.GridView1.DataBind();
            this.SortType = this.SortType == "ASC" ? "DESC" : "ASC";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BorAddtoWeb.aspx");
        }
    }
}
