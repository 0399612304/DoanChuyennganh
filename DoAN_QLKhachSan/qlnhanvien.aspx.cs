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
    public partial class qlnhanvien : System.Web.UI.Page
    {
     //   string str = @"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True";
        SqlConnection connection;
        SqlCommand command;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                load_data();
            }
        }
        /*      private void loaddata()
               {
                   SqlDataAdapter adapter = new SqlDataAdapter();
                   DataTable table = new DataTable();
                   connection = new SqlConnection(str);
                   connection.Open();
                   command = connection.CreateCommand();
                   command.CommandText = "select * from NhanVien";
                   adapter.SelectCommand = command;
                   GridView1.DataSource = table;
                   table.Clear();
                   adapter.Fill(table);
               } */

        private void load_data()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("SELECT Manv , hoten, ngaysinh,CASE gioitinh WHEN 1 THEN 'Nam'ELSE N'Nữ' END AS gioitinh, sdt, DiaChi, Email, CMND_NV FROM NhanVien", con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            GridView1.DataSource = tb;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from NhanVien where MaNV='" + id + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            load_data();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int gt;
            int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string ten = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string ngaysinh = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            //    string gioitinh = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("drlGioiTinh")).SelectedValue;
            string gioitinh = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            if (gioitinh == "Nam")
            {
                gt = 1;
            }
            else
            {
                gt = 0;
            }
            string sdt =(GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
            string diachi = (GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
            string email = (GridView1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
            string cmnd = (GridView1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("update NhanVien set HoTen=N'" + ten + "',ngaysinh='" + ngaysinh + "',GioiTinh=" + gt + ", SDT=" + sdt + ",diachi=N'" + diachi + "',email=N'" + email + "' , CMND_NV="+ cmnd+" where maNV='" + id + "'", con);
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

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            Response.Redirect("addnhanvien.aspx");
        }
        public string CheckGioiTinh(object obj)
        {
            bool b = bool.Parse(obj.ToString());
            if (b)
                return "Nam.";
            else
                return "Nữ.";
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