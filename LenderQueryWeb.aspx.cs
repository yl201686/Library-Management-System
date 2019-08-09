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
    public partial class LenderWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
                this.SortType = "ASC";//设定数据排序方式
            }
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
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
          
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
       
        }
        private void BindData()
        {
            Bll.BorTable bBor = new Bll.BorTable();
            GridView1.DataSource = bBor.select(string.Empty);
            GridView1.DataBind();

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
          
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {

                if (DropDownList1.Text == "借书证号")
                {
                    Bll.BorTable bBor = new Bll.BorTable();
                    this.GridView1.DataSource = bBor.select("BorId like '%" + TextBox3.Text + "%'");
                    this.GridView1.DataKeyNames = new string[] { "ID" };
                    this.GridView1.DataBind();

                }
                if (DropDownList1.Text == "读者名字")
                {
                    Bll.BorTable bBor = new Bll.BorTable();
                    this.GridView1.DataSource = bBor.select("BorName like '%" + TextBox3.Text + "%'");
                    this.GridView1.DataKeyNames = new string[] { "ID" };
                    this.GridView1.DataBind();

                }
                if (DropDownList1.Text == "读者班级")
                {
                    Bll.BorTable bBor = new Bll.BorTable();
                    this.GridView1.DataSource = bBor.select("BorClass like '%" + TextBox3.Text + "%'");
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

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            DataView view = this.BindTable.DefaultView;
            view.Sort = string.Format("{0}{1}", e.SortExpression, this.SortType);
            this.GridView1.DataSource = view;
            this.GridView1.DataBind();
            this.SortType = this.SortType == "ASC" ? "DESC" : "ASC";
        }
    }
}
