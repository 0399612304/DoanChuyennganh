using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace DoAN_QLKhachSan
{
    public partial class addtaikhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            string matk = txtmatk.Text;
            string tentk = txttentk.Text;
            string matkhau = txtmatkhau.Text;
            string manv = txtmanv.Text;
            string mavt = dropgioitinh.Text;
            int a;
            if (mavt == "ADMIN")
            {
                a = 1;
            }
            else if(mavt == "Buồng Phòng")
            {
                a = 2;
            }
            else if (mavt == "Dịch Vụ")
            {
                a = 3;
            }
            else if (mavt == "Lễ Tân")
            {
                a = 4;
            }
            else
            {
                a = 5;
            }
            
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert into Taikhoan values ("+matk+",'"+tentk+"'," + matkhau + "," + manv + "," + a + ")", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("qltaikhoan.aspx");
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("qltaikhoan.aspx");
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