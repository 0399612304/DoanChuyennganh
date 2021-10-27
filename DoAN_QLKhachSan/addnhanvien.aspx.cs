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
    public partial class addnhanvien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
           
            {
                string manv = txtmanv.Text;
                string hoten = txttennv.Text;
                string ngaysinh = txtngaysinh.Text;
                string gioitinh = dropgioitinh.Text;
                int a;
                if (gioitinh == "Nam")
                {
                    a = 0;
                }
                else
                {
                    a = 1;
                }
                string sdt = txtsdt.Text;
                string diachi = txtdiachi.Text;
                string email = txtemail.Text;
                string cmnd = txtcmnd.Text;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Insert into NhanVien values (" + manv + ",N'"+hoten+"','"+ngaysinh+"',"+a+","+sdt+",N'"+diachi+"','"+email+"',"+cmnd+")", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("qlnhanvien.aspx");
            }
            
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("qlnhanvien.aspx");
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