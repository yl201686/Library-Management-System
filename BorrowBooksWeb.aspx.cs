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
    public partial class BorrowBooksWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bang();
            }
        }
        public void bang()
        {
            Bll.BookTable book = new Bll.BookTable();
            DataTable da = book.select("BookynMake='" + "否" + "'");
            GridView1.DataSource = da;
            GridView1.DataKeyNames = new string[] { "BookId" };
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string bookId = e.CommandArgument.ToString();
            //string s = "denglu.aspx?name=" + TextBox1.Text;
            //Response.Redirect(s);
            Response.Redirect("BrrBookRegWeb.aspx?name=" + bookId);
        }
    }
}
