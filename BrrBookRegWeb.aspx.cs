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
    public partial class BrrBookRegWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }

        }
        public void bind()
        {
            Bll.BookTable book = new Bll.BookTable();
            DataTable da = book.select("BookId='" + Request.QueryString["name"] + "'");
            txt_bookid.Text = Request.QueryString["name"];
            txt_bookname.Text = da.Rows[0]["BookName"].ToString().Trim();
        }
        public static bool cunzai = false;
        protected void btn_add_Click(object sender, EventArgs e)
        {
            Model.BorrowTable borr = new Model.BorrowTable();
            borr.BookId = Convert.ToInt32(txt_bookid.Text);
            borr.BookName = txt_bookname.Text;
            borr.BorId = Convert.ToInt32(txt_broid.Text);
            borr.BorName = txt_broname.Text;
            borr.BorData = DateTime.Now;
            // TimeSpan tis = new TimeSpan(30, 0, 0);
            borr.YingData = DateTime.Now.AddDays(30);
            borr.AisoData = "未还书";
            borr.BorFine = "0";
            Model.BookTable book = new Model.BookTable();
            book.BookId = Convert.ToInt32(txt_bookid.Text); ;
            book.BookynLend = "是";
            Bll.BorrowTable Bor = new Bll.BorrowTable();
            if (Bor.huigun(borr, book) != 0)
            {
                Response.Write("<script>alert('成功借书');</script>");
                Response.Redirect("jiehuan.aspx");
            }
        }

        protected void txt_bookid_TextChanged(object sender, EventArgs e)
        {
            Bll.BorTable bor = new Bll.BorTable();
            DataTable da = bor.select("BorId='" + Convert.ToInt32(txt_broid.Text) + "'");
            if (da.Rows.Count == 1)
            {
                txt_broname.Text = da.Rows[0]["BorName"].ToString();
                cunzai = true;
                btn_add.Enabled = true;
            }
            else
            {
                btn_add.Enabled = false;
                txt_broname.Text = "用户不存在";
            }
        }
    }
}
