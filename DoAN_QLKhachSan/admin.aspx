<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="DoAN_QLKhachSan.admin" %>
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
</asp:Content>
