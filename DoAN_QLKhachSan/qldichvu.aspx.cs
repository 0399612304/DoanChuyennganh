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
    public partial class qldichvu : System.Web.UI.Page
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from DichVu where MaDV='" + id + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            load_data();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            load_data();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string ten = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string giadv = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string maloaidv = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("update DichVu set tendv=N'" + ten + "',giadv=" + giadv + ",maloaidv=" + maloaidv + " where madv=" + id + "", con);
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

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            Response.Redirect("adddichvu.aspx");
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

        protected void btnthem1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adđichvu.aspx");
        }

        protected void DetailsView1_ItemInserted1(object sender, DetailsViewInsertedEventArgs e)
        {
            FileUpload fl = (FileUpload)DetailsView1.FindControl("FUThem");
            if (fl.FileName.ToString() != "")
            {
                fl.SaveAs(MapPath("~/Image/" + fl.FileName));
            }
        }

        protected void DetailsView1_ItemInserting1(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload fl = (FileUpload)DetailsView1.FindControl("FUThem");
            if (fl.FileName.ToString() != "")
            {
                e.Values["Hinhanh"] = fl.FileName.ToString();
            }
        }

        protected void DetailsView1_ItemUpdated1(object sender, DetailsViewUpdatedEventArgs e)
        {
            FileUpload fl = (FileUpload)DetailsView1.FindControl("FUSua");
            if (fl.FileName.ToString() != "")
            {
                fl.SaveAs(MapPath("~/Image/" + fl.FileName));
            }
        }

        protected void DetailsView1_ItemUpdating1(object sender, DetailsViewUpdateEventArgs e)
        {
            FileUpload fl = (FileUpload)DetailsView1.FindControl("FUSua");
            Label lb = (Label)DetailsView1.FindControl("Label3");
            if (fl.FileName.ToString() != "")
            {
                e.NewValues["HinhAnh"] = "Image/" + fl.FileName.ToString();
            }
            else
                e.OldValues["HinhAnh"] = lb.Text;
        }
    }
}