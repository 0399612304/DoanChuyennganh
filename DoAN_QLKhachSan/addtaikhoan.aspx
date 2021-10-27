<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addtaikhoan.aspx.cs" Inherits="DoAN_QLKhachSan.addtaikhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
      <asp:Button ID="btnnhanvien" runat="server" Width="300px" Height="70px"  Text="Quản Lý Hồ Sơ Nhân Viên" OnClick="btnnhanvien_Click"  /> 
    <br />
    <asp:Button ID="btntaikhoan" runat="server" Width="300px" Height="70px" Text="Quản Lý Tài Khoản" OnClick="btntaikhoan_Click"  />
    <br />
    <asp:Button ID="btnsukien" runat="server" Width="300px" Height="70px" Text="Quản Lý Sự Kiện" OnClick="btnsukien_Click"  />
    <br />
      <asp:Button ID="Button1" runat="server" Width="300px" Height="70px" Text="Quản Lý Dịch Vụ" OnClick="Button1_Click"  />
    <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
       <tr>
           <td>
               <asp:Label ID="Label1" runat="server" Text="Mã Tài Khoản :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtmatk" runat="server"></asp:TextBox>
           </td>
       </tr>
       <tr>
           <td>
               <asp:Label ID="Label2" runat="server" Text="Tên Tài Khoản :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txttentk" runat="server"></asp:TextBox>
           </td>
       </tr>
       <tr>
           <td>
               <asp:Label ID="Label3" runat="server" Text="Mật Khẩu :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtmatkhau" runat="server"></asp:TextBox>
           </td>
       </tr>
        <tr>
           <td>
               <asp:Label ID="Label5" runat="server" Text="Mã Nhân Viên :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtmanv" runat="server"></asp:TextBox>
           </td>
       </tr>

       <tr>
           <td>
               <asp:Label ID="Label4" runat="server" Text="Mã Vai Trò :"></asp:Label>
           </td>
           <td>
               <asp:DropDownList ID="dropgioitinh" runat="server">
                   <asp:ListItem>ADMIN</asp:ListItem>
                   <asp:ListItem>Buồng Phòng</asp:ListItem>
                   <asp:ListItem>Dịch Vụ</asp:ListItem>
                   <asp:ListItem>Lễ Tân</asp:ListItem>
                   <asp:ListItem>Khách Hàng</asp:ListItem>
               </asp:DropDownList>
           </td>
       </tr>
               
        <tr>
            <td>
                <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click"  />
            </td>
            <td>
                <asp:Button ID="btnhuy" runat="server" Text="Hủy" OnClick="btnhuy_Click" />
            </td>
        </tr>
   </table>
</asp:Content>
