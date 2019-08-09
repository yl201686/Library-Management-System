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
    public partial class QuestionWed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Bll.AdminTable bAdmin = new Bll.AdminTable();
            Model.AdminTable mAdmin = new Model.AdminTable();
            string strWhere = "ID='" + txtID.Text + "' and AdminTrouble='" + txtTrouble.Text + "' and AdminAnserwer='" + txtAnserwer.Text + "'";
            DataTable dt = bAdmin.select(strWhere);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("PrssWordWed.aspx?ID=" + txtID.Text + "&txtTrouble=" + txtTrouble.Text + "&txtAnserwer=" + txtAnserwer.Text);
            }
            else
            {
                Response.Write("<script>alert('输入错误!')</script>");
            }
        }
    }
}
