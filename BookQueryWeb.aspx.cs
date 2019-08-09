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
    public partial class BookQueryWeb1 : System.Web.UI.Page
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
            Bll.BookTable books = new Bll.BookTable();
            GridView1.DataSource = books.select("");
            GridView1.DataKeyNames = new string[] { "BookId" };
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {
                if (DropDownList1.Text == "图书编号")
                {
                    Bll.BookTable bBor = new Bll.BookTable();
                    this.GridView1.DataSource = bBor.select("BookId like '%" + TextBox3.Text + "%'");
                    this.GridView1.DataKeyNames = new string[] { "BookId" };
                    this.GridView1.DataBind();


                }
                if (DropDownList1.Text == "图书名称")
                {
                    Bll.BookTable bBor = new Bll.BookTable();
                    this.GridView1.DataSource = bBor.select("BookName like '%" + TextBox3.Text + "%'");
                    this.GridView1.DataKeyNames = new string[] { "BookId" };
                    this.GridView1.DataBind();


                }
                if (DropDownList1.Text == "出版社名称")
                {
                    Bll.BookTable bBor = new Bll.BookTable();
                    this.GridView1.DataSource = bBor.select("BookPress like '%" + TextBox3.Text + "%'");
                    this.GridView1.DataKeyNames = new string[] { "BookId" };
                    this.GridView1.DataBind();

                }
                this.Label4.Text = "";
            }
            else
            {
                this.Label4.Text = "不能为空";
            }
        }
    }
}
