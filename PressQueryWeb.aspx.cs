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
    public partial class PressQueryWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                bind();
            this.SortType = "ASC";//设定数据排序方式
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {
                if (DropDownList1.Text == "出版社名字")
                {
                    Bll.PressTable bpre = new Bll.PressTable();

                    this.GridView1.DataSource = bpre.select("PreName like '%" + TextBox3.Text + "%'");
                    this.GridView1.DataKeyNames = new string[] { "ID" };
                    this.GridView1.DataBind();

                }
                if (DropDownList1.Text == "出版社地址")
                {
                    Bll.PressTable bpre = new Bll.PressTable();
                    this.GridView1.DataSource = bpre.select("PreAddress like '%" + TextBox3.Text + "%'");
                    this.GridView1.DataKeyNames = new string[] { "ID" };
                    this.GridView1.DataBind();

                }
                if (DropDownList1.Text == "出版社电话")
                {
                    Bll.PressTable bpre = new Bll.PressTable();
                    this.GridView1.DataSource = bpre.select("PreTel like '%" + TextBox3.Text + "%'");
                    this.GridView1.DataKeyNames = new string[] { "ID" };
                    this.GridView1.DataBind();
                }
                this.Label4.Text = "";
            }
            else
            {
                this.Label4.Text = "不能为空";
            }
        }
        public void bind()
        {
            Bll.PressTable bpre = new Bll.PressTable();
            GridView1.DataSource = bpre.select("");
            this.GridView1.DataKeyNames = new string[] { "ID" };
            this.GridView1.DataBind();
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
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bind();
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
                e.Row.Cells[5].Attributes.Add("onclick", "return confirm('你确定要删除吗？');");
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.GridView1.EditIndex = e.NewEditIndex;
            this.bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Bll.PressTable bpre = new Bll.PressTable();
            // bpre.delete (GridView1 .DataKeys [e .RowIndex].Value .ToString ());
            bpre.delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
            GridView1.EditIndex = -1;
            this.bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Model.PressTable mpre = new Model.PressTable();
            mpre.ID = Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text);
            mpre.PreName = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
            mpre.PreAddress = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text;
            //mpre.PreTel = int.Parse(((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text);
            mpre.PreTel = Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text);
            Bll.PressTable bpre = new Bll.PressTable();
            bpre.update(mpre, mpre.ID);
            this.GridView1.EditIndex = -1;
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
    }
}
