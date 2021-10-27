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
    public partial class qltaikhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                load_data();
            }
        }
        private void load_data()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("SELECT Matk , TenTK, MatKhau,MaNV, CASE MaVT WHEN 1 THEN N'ADMIN' WHEN 2 THEN N'Buồng Phòng' WHEN 3 THEN N'Dịch Vụ' WHEN 4 THEN N'Lễ Tân' ELSE N'Khách Hàng' END AS MaVT FROM TaiKhoan", con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            GridView1.DataSource = tb;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from taikhoan where MaTK='" + id + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            load_data();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int vt;
            int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            
            string tentk = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            //    string gioitinh = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("drlGioiTinh")).SelectedValue;
            string matkhau = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string manv = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            string mavt = (GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
            if (mavt == "ADMIN")
            {
                vt = 1;
            }
            else if (mavt == "Buồng Phòng")
            {
                vt = 2;
            }
            else if (mavt == "Dịch Vụ")
            {
                vt = 3;
            }
            else if (mavt == "Lễ Tân")
            {
                vt = 4;
            }
            else
            {
                vt = 5;
            }

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("update taikhoan set tentk='" + tentk + "',matkhau='" + matkhau + "', Manv=" + manv + ",mavt=" + vt + " where matk = "+id+"", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            load_data();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            load_data();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            load_data();
        }

        protected void btnthemTk_Click(object sender, EventArgs e)
        {
            Response.Redirect("addtaikhoan.aspx");
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