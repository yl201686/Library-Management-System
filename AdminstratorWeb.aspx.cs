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
    public partial class AdminstratorWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
        private void BindData()
        {
            Bll.AdminTable bAdmin = new Bll.AdminTable();
            GridView1.DataSource = bAdmin.select(string.Empty);
            GridView1.DataBind();
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ID = Convert.ToInt32((GridView1.Rows[e.RowIndex].Cells[0]).Text.Trim());
            Bll.AdminTable bAdmin = new Bll.AdminTable();
            bAdmin.delete(ID);
            BindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Bll.AdminTable bAdmin = new Bll.AdminTable();
            Model.AdminTable mAdmin = new Model.AdminTable();
           // mAdmin.ID = int.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text.ToString().Trim());
            mAdmin.AdminName = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
            mAdmin.AdminPwd = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
            mAdmin.AdminTrouble = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim();
            mAdmin.AdminAnswer = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim();
            bAdmin.update(mAdmin, Convert.ToInt32((GridView1.Rows[e.RowIndex].Cells[0]).Text.Trim()));
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;
            BindData();
            //for (int i = 0; i < GridView1.Rows.Count; i++)
            //{
            //    GridView1.Rows[i].Cells[0].Enabled = false;

            //}
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
