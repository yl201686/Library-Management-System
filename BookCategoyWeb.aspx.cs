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
    public partial class BookCategoyWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                this.bind();
        }
        public Model.CategoryTable Mct = new Model.CategoryTable();
        public void bind()
        {
            Bll.CategoryTable Bct = new Bll.CategoryTable();
            this.GridView1.DataSource = Bct.select("");
            this.GridView1.DataKeyNames = new string[] { "ID" };
            this.GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Mct.BookCategory = txtCategory.Text;
                Bll.CategoryTable Bct = new Bll.CategoryTable();
                Bct.insert(Mct);
                this.bind();
            }
            catch
            {
                Response.Write("<script>alert('添加失败！')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Bll.CategoryTable Bct = new Bll.CategoryTable();
            this.GridView1.DataSource = Bct.select("BookCategory like '%" + txtCategory.Text + "%'");
            this.GridView1.DataKeyNames = new string[] { "ID" };
            this.GridView1.DataBind();
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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.GridView1.PageIndex = e.NewPageIndex;
            this.bind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //txtCategory.Text = this.GridView1.Rows[e.NewEditIndex].Cells[1].Text;
            this.GridView1.EditIndex = e.NewEditIndex;
            this.bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Mct.ID = int.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text.ToString().Trim());
            Mct.BookCategory = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
            Bll.CategoryTable Bct = new Bll.CategoryTable();
            Bct.update(Mct, Mct.ID);
            this.GridView1.EditIndex = -1;
            this.bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.GridView1.EditIndex = -1;
            this.bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Bll.CategoryTable Bct = new Bll.CategoryTable();
            Bct.delete(int.Parse(this.GridView1.DataKeys[e.RowIndex].Value.ToString()));
            this.bind();
        }
    }
}
