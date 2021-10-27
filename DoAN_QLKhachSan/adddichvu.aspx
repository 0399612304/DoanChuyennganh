<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adddichvu.aspx.cs" Inherits="DoAN_QLKhachSan.adddichvu" %>
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
     <div class="xemdichvu">
        <asp:GridView ID="GridView1" runat="server" style="margin-top: 0px" AutoGenerateColumns="False" DataKeyNames="MaDV"  CellPadding="4" ForeColor="#333333" GridLines="None"   >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaDV" HeaderText="Mã Dịch Vụ" />      
            <asp:BoundField DataField="TenDV" HeaderText="Tên Dịch Vụ" />
            <asp:BoundField DataField="GiaDV" HeaderText="Giá Dịch Vụ" />
            <asp:BoundField DataField="MaLoaiDV" HeaderText="Dịch Vụ" />
            <asp:CommandField />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        
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
    </div>
    <div class ="themdichvu"> 
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Mã Dịch Vụ"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmadv" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Tên Dịch Vụ"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttendv" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Giá Dịch Vụ"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtGiaDichvu" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Mã Loại DV"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmaloaidv" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="txtthem" runat="server" Text="Thêm" OnClick="txtthem_Click" />
                    </td>
                    <td>
                        <asp:Button ID="txthuy" runat="server" Text="Hủy" OnClick="txthuy_Click" />
                    </td>
                </tr>
                
            </table>
        </div>

    <br />
     <br />
     <br />
     <br />
     <br />
   

</asp:Content>
