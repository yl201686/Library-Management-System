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
    public partial class ModifyWed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            
            Bll.AdminTable bAdmin = new Bll.AdminTable();
            Model.AdminTable mAdmin = new Model.AdminTable();
            string strWhere = "ID='" + txtID.Text + "' and AdminPwd='" + txtOldpwd.Text + "'";
            DataTable dt = bAdmin.select(strWhere);
            if (dt.Rows.Count > 0)
            {
                if (txtNewpwd.Text == txtPwd.Text)
                {
                    mAdmin.AdminPwd = txtPwd.Text;
                    mAdmin.AdminName = txtName.Text;
                    mAdmin.ID = Convert.ToInt32(txtID.Text);
                    mAdmin.AdminTrouble = dt.Rows[0]["AdminTrouble"].ToString().Trim();
                    mAdmin.AdminAnswer = dt.Rows[0]["AdminAnserwer"].ToString().Trim();
                    if (bAdmin.update(mAdmin, Convert.ToInt32(txtID.Text)))
                    {
                        Response.Write("<script>alert('修改成功!')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('修改失败!')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('两次密码不一致!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('密码错误!')</script>");
            }
   
        }
    }
}
