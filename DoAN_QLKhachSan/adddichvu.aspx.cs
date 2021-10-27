using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAN_QLKhachSan
{
    public partial class adddichvu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            load_data();
        }
        private void load_data()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM DichVU", con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            GridView1.DataSource = tb;
            GridView1.DataBind();
        }

        protected void txtthem_Click(object sender, EventArgs e)
        {
            try
            {
                string madv = txtmadv.Text;
                string tendv = txttendv.Text;
                string giadv = txtGiaDichvu.Text;
                string maloaidv = txtmaloaidv.Text;

                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Insert into dichvu values (" + madv + ",N'" + tendv + "'," + giadv + "," + maloaidv + ")", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("qldichvu.aspx");
            }
            catch (SqlException err)
            {
                Response.Write("<b>Bạn đã nhập sai !!<b>" + err.Message + "<p>");
            }

        }

        protected void txthuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("qldichvu.aspx");
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