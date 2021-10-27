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
    public partial class dangnhap : System.Web.UI.Page
    {
       
        SqlConnection stcn = new SqlConnection(@"Data Source=DESKTOP-1GG0LVP\SQLEXPRESS;Initial Catalog=qlyks;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
           
        }

        protected void btndangnhap_Click1(object sender, EventArgs e)
        {
            try
            {
                stcn.Open();
                string tk = txttaikhoan.Text;
                string mk = txtmatkhau.Text;
           //     string i = ListBox2.Text;
                string i = DropDownList1.Text;
               int k = 0;
               if (i == "User")
               {
                    k = 0;
               }
                else if (i == "ADMIN")
                {
                    k = 1;
                }
                else
                {

                }
                {
                    k = 2;
                }
                           string sql = "select * from TaiKhoan where tenTk = '" + tk + "' and MatKhau ='" + mk + "' and MaVT =" + k + "";
          //      string sql = "select * from TaiKhoan where tenTk = '" + tk + "' and MatKhau ='" + mk + "' ";
                SqlCommand cmd = new SqlCommand(sql, stcn);
                SqlDataReader dta = cmd.ExecuteReader();
               
                if (dta.Read() == true)
                {

                    /*                   string sql1 = "select * from TaiKhoan where tenTk = '" + tk + "' and MAVT =0 " ;
                                       SqlCommand cmd1 = new SqlCommand(sql, stcn);
                                       SqlDataReader dta1 = cmd1.ExecuteReader();

                                       {
                                           if (dta.Read() == true) {
                                               Response.Redirect("home.aspx");
                                           }
                                           else
                                           {

                                               string sql2 = "select MAVT from TaiKhoan where tenTk = '" + tk + "' and MAVT =1 ";
                                               SqlCommand cmd2 = new SqlCommand(sql2, stcn);
                                               SqlDataReader dta2 = cmd2.ExecuteReader();
                                               {
                                                   if (dta.Read() == true)
                                                   {
                                                       Response.Redirect("admin.aspx");
                                                   }
                                                   else
                                                   {
                                                       Response.Redirect("letan.aspx");
                                                   }

                                               }
                                           }
                                       }*/

                    if (k == 0)
                    {
                        Response.Redirect("home.aspx");
                    }
                    else if (k == 1)
                    {
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        Response.Redirect("letan.aspx");
                    }
                }

                else
                {
                    txtmatkhau.Text = "Tài Khoản Hoặc mật khẩu không chính xác !! OKKKK";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<b>Error<b>" + ex.Message + "<p>");
            }
        }
    }
    }
