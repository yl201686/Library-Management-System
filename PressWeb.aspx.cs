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
    public partial class PressWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                bind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void bind()
        {

            Bll.PressTable bpre = new Bll.PressTable();
            GridView1.DataSource = bpre.select("");
            this.GridView1.DataKeyNames = new string[] { "ID" };
            this.GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.PressTable mpre = new Model.PressTable();
            try
            {
                mpre.PreName = txtCategory.Text;
                mpre.PreAddress = TextBox1.Text;
                mpre.PreTel = int.Parse(TextBox2.Text.ToString());
                Bll.PressTable bpre = new Bll.PressTable();
                bpre.insert(mpre);
                Response.Write("<script>alert('添加成功! ')</script>");
                this.bind();
            }
            catch
            {
                Response.Write("<script>alert('添加失败！')</script>");
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Model.PressTable mpre = new Model.PressTable();
            mpre.ID = int.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text.ToString().Trim());
            mpre.PreName = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
            mpre.PreAddress = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text;
            //mpre.PreTel = int.Parse(((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text);
            mpre.PreTel = Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text);
            Bll.PressTable bpre = new Bll.PressTable();
            bpre.update(mpre, mpre.ID);
            this.GridView1.EditIndex = -1;
            this.bind();
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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[5].Attributes.Add("onclick", "return confirm('你确定要删除吗？');");
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.GridView1.EditIndex = -1;
            this.bind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bind();
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }
    }
}
