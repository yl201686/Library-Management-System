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
    public partial class MakeBorrWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

  
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {

                Bll.BookTable bBor = new Bll.BookTable();
                this.GridView1.DataSource = bBor.select("BookynMake like '%" + TextBox3.Text + "%'");
                this.GridView1.DataKeyNames = new string[] { "BookynMake" };
                this.GridView1.DataBind();
                this.Label4.Text = "";
            }
            else
            {
                this.Label4.Text = "不能为空";
            }
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string bookId = e.CommandArgument.ToString();
            Response.Redirect("BrrBookRegWeb.aspx?name=" + bookId);
        }
    }
}
