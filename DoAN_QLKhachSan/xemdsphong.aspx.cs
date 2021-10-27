using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DoAN_QLKhachSan
{
    public partial class xemphong : System.Web.UI.Page
    {
        
        string stcn = @"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            try
            {
                string h = "select * from LoaiPhong";
                SqlDataAdapter da = new SqlDataAdapter(h, stcn);
                DataTable dt2 = new DataTable();
                da.Fill(dt2);
                this.DataList1.DataSource = dt2;
                this.DataList1.DataBind();


            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }

            if (Page.IsPostBack) return;
            try
            {
                string k = "select * from tang";
                SqlDataAdapter da1 = new SqlDataAdapter(k, stcn);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                this.DataList2.DataSource = dt1;
                this.DataList2.DataBind();

            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }


            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["ml"] == null)
                q = "select * from Phong";
            else
            {
                string maloai = Context.Items["ml"].ToString();
                q = "select * from Phong where maphong = "+maloai+" ";
            }
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(q, stcn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList4.DataSource = dt;
                this.DataList4.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }


            



            //  loadtang();
        }
        private void loadloaiphong()
        {

        }
        /*   private void loadtang()
           {
               if (Page.IsPostBack) return;
               try
               {

               }
               catch (SqlException ex)
               {
                   Response.Write(ex.Message);
               }
           }*/


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string maloai = ((LinkButton)sender).CommandArgument;
            Context.Items["ml"] = maloai;
            Server.Transfer("xemdsphong.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            string matang = ((LinkButton)sender).CommandArgument;
            Context.Items["mt"] = matang;
            Server.Transfer("xemdsphong.aspx");
        }



    }
}