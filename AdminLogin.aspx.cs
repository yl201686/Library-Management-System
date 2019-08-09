using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace 图书管理系统
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ibtn_Click(object sender, ImageClickEventArgs e)
        {
            Bll.AdminTable adm = new Bll.AdminTable();
            DataTable da = adm.select("ID='" + txtID.Text + "'");
            try
            {
                if (txtID.Text == (da.Rows[0]["ID"].ToString()))
                {
                    if (txtPwd.Text == (da.Rows[0]["AdminPwd"].ToString()))
                    {
                        HttpContext.Current.Session["adminUserId"] = txtID.Text;
                        Response.Redirect("AdminAdmin.aspx");
                        lableyz.Text = "";
                    }
                    else
                    {
                        lableyz.Text = "密码错误";
                    }
                }
                else
                {
                    lableyz.Text = "账号错误";
                }
            }
            catch
            {
                lableyz.Text = "账号错误";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void labelgm_Click(object sender, EventArgs e)
        {

           Response.Redirect("ModifyWed.aspx");
        }

        protected void labelzc_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterWeb.aspx");
        }
    }
}
