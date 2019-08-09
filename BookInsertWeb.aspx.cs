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
    public partial class BookInsertWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetDrop();
            }
        }
        private void SetDrop()
        {
            Bll.PressTable press = new Bll.PressTable();
            DropDownList1.DataSource = press.aselect("");
            DropDownList1.DataValueField = "PreName";
            DropDownList1.DataBind();
            Bll.CategoryTable cate = new Bll.CategoryTable();
            DropDownList2.DataSource = cate.aselect("");
            DropDownList2.DataValueField = "BookCategory";
            DropDownList2.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookAdminWeb.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.BookTable Mbook = new Model.BookTable();
            Mbook.BookId = Convert.ToInt32(TextBox1.Text);
            Mbook.BookName = TextBox2.Text;
            Mbook.BookPrice = TextBox3.Text;
            Mbook.BookCategory = DropDownList2.SelectedValue.ToString();
            Mbook.BookPress = DropDownList1.SelectedValue.ToString();
            Mbook.BookLendDate = DateTime.Now;
            Mbook.BookynLend = "否";
            Mbook.BookynMake = "否";
            Bll.BookTable book = new Bll.BookTable();
            bool tianjia;
            tianjia = book.insert(Mbook);
            if (tianjia)
            {
                Response.Write("<script>alert('添加成功');</script>");
                Response.Redirect("BookAdminWeb.aspx");
            }
            else
            {
                Response.Write("<script>alert('添加失败');</script>");
            }
        }
    }
}
