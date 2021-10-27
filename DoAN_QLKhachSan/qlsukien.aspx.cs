using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAN_QLKhachSan
{
    public partial class qlsukien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*     protected void btnthem_Click(object sender, EventArgs e)
            {
                Response.Redirect("addsukien.aspx");
            }

           protected void btnxoa_Click(object sender, EventArgs e)
            {
                try
                {
                    string maxoa = txtxoa.Text;
                    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand("delete from SUKIEN where MaSK='" + maxoa + "'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("qlsukien.aspx");
                }
                catch(Exception ex)
                {
                    Label1.Text = "Sai";
                }
            }*/

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
                e.Values["images"] =  fl.FileName.ToString();
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
                e.NewValues["Images"] = "Image/" + fl.FileName.ToString();
            }
            else
                e.OldValues["Images"] = lb.Text;
        }
    }
}