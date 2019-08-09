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
    public partial class PrssWordWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtID.Text = Request.QueryString["ID"];
            txtTrouble.Text = Request.QueryString["txtTrouble"];
            txtAnserwer.Text = Request.QueryString["txtAnserwer"];
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Model.AdminTable mAdmin = new Model.AdminTable();
            Bll.AdminTable bAdmin = new Bll.AdminTable();
            mAdmin.AdminPwd = txtPwd.Text;
            mAdmin.ID = Convert.ToInt32(txtID.Text);
            mAdmin.AdminName = txtName.Text;
            mAdmin.AdminTrouble = txtTrouble.Text;
            mAdmin.AdminAnswer = txtAnserwer.Text;
            if (bAdmin.update(mAdmin, Convert.ToInt32(txtID.Text)))
            {
                Response.Write("<script>alert('修改成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败!')</script>");
            }
        }
    }
}
