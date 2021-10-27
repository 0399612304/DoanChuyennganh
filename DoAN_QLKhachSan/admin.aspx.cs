using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAN_QLKhachSan
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntaikhoan_Click(object sender, EventArgs e)
        {
            Response.Redirect("qltaikhoan.aspx");
        }

        protected void btnnhanvien_Click(object sender, EventArgs e)
        {
            Response.Redirect("qlnhanvien.aspx");
        }

        protected void btnsukien_Click(object sender, EventArgs e)
        {
            Response.Redirect("qlsukien.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("qldichvu.aspx");
        }
    }
}