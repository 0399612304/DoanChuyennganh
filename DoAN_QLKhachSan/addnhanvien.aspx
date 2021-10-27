<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addnhanvien.aspx.cs" Inherits="DoAN_QLKhachSan.addnhanvien" %>
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
               <asp:Label ID="Label1" runat="server" Text="Mã Nhân Viên :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtmanv" runat="server"></asp:TextBox>
           </td>
       </tr>
       <tr>
           <td>
               <asp:Label ID="Label2" runat="server" Text="Tên Nhân Viên :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txttennv" runat="server"></asp:TextBox>
           </td>
       </tr>
       <tr>
           <td>
               <asp:Label ID="Label3" runat="server" Text="Ngày Sinh :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtngaysinh" runat="server"></asp:TextBox>
           </td>
       </tr>
       <tr>
           <td>
               <asp:Label ID="Label4" runat="server" Text="Giới Tính :"></asp:Label>
           </td>
           <td>
               <asp:DropDownList ID="dropgioitinh" runat="server">
                   <asp:ListItem>Nam</asp:ListItem>
                   <asp:ListItem>Nữ</asp:ListItem>
               </asp:DropDownList>
           </td>
       </tr>
       <tr>
           <td>
               <asp:Label ID="Label5" runat="server" Text="Số điện thoại :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
           </td>
       </tr>
        <tr>
           <td>
               <asp:Label ID="Label6" runat="server" Text="Địa chỉ : "></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
           </td>
       </tr>
        <tr>
           <td>
               <asp:Label ID="Label7" runat="server" Text="Email :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
           </td>
       </tr>
        <tr>
           <td>
               <asp:Label ID="Label8" runat="server" Text="Số CMND :"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtcmnd" runat="server"></asp:TextBox>
           </td>
       </tr>
        <tr>
            <td>
                <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />
            </td>
            <td>
                <asp:Button ID="btnhuy" runat="server" Text="Hủy" OnClick="btnhuy_Click" />
            </td>
        </tr>
   </table>
</asp:Content>
