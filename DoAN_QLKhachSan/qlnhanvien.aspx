<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="qlnhanvien.aspx.cs" Inherits="DoAN_QLKhachSan.qlnhanvien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Button ID="btnnhanvien" runat="server" Width="300px" Height="70px"  Text="Quản Lý Hồ Sơ Nhân Viên" OnClick="btnnhanvien_Click"  /> 
    <br />
    <asp:Button ID="btntaikhoan" runat="server" Width="300px" Height="70px" Text="Quản Lý Tài Khoản" OnClick="btntaikhoan_Click"  />
    <br />
    <asp:Button ID="btnsukien" runat="server" Width="300px" Height="70px" Text="Quản Lý Sự Kiện" OnClick="btnsukien_Click"  />
    <br />
      <asp:Button ID="Button1" runat="server" Width="300px" Height="70px" Text="Quản Lý Dịch Vụ" OnClick="Button1_Click"  />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" style="margin-top: 0px" AutoGenerateColumns="False" DataKeyNames="MaNV" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCreated="GridView1_RowCreated" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None"  >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="Mã Nhân Viên" />      
            <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" />
            <asp:BoundField DataField="SDT" HeaderText="Số Điện Thoại" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="CMND_NV" HeaderText="CMND" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:CommandField ShowInsertButton="True" ShowSelectButton="True" />
            <asp:CommandField />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <EmptyDataTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# CheckGioiTinh(Eval("GioiTinh")) %>'></asp:Label>
        </EmptyDataTemplate>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
        
    </asp:GridView>
    <br />
    <asp:Button ID="btnthem" runat="server" Text="Thêm nhân viên" OnClick="btnthem_Click" />
</asp:Content>
