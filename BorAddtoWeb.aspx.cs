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
    public partial class BorAddtoWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindList();//绑定DropCode控件
            }
        }
        protected void BindList()
        {
            Bll.ReadersTable rea = new Bll.ReadersTable();
            this.BorTitle.DataSource = rea.select("");//查询ReadersTable表
            this.BorTitle.DataTextField = "ReaCategory";//设置DropCode绑定的数据项中文本显示的数据列
            this.BorTitle.DataValueField = "ID";//设置DropCode绑定的数据项中的值的数据列
            this.BorTitle.DataBind();//调用DataBind()方法，进行数据绑定
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Model.BorTable mBrt = new Model.BorTable();
            try
            {
                if (BorPassword.Text == BorPass.Text)
                {
                    mBrt.BorId = int.Parse(BorId.Text);
                    mBrt.BorName = BorName.Text;
                    mBrt.BorClass = BorClass.Text;
                    mBrt.BorTitle = BorTitle.Text;
                    mBrt.BorLoss = "否";
                    mBrt.BorPassword = BorPassword.Text;
                    Bll.BorTable bBrt = new Bll.BorTable();
                    if (bBrt.insert(mBrt))
                    {
                        Response.Write("<script>alert('添加成功!')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('添加失败!')</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert('两次密码不一致！')</script>");
                }

            }
            catch
            {
                Response.Write("<script>alert('添加失败！')</script>");
            }


        }
    }
}
