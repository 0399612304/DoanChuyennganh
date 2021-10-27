<%@ Page Title="" Language="C#" MasterPageFile="~/xemphong1.Master" AutoEventWireup="true" CodeBehind="xemdsphong.aspx.cs" Inherits="DoAN_QLKhachSan.xemphong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="zzz"><asp:DataList CssClass="dtl1" ID="DataList1" runat="server">
        <ItemTemplate>
            
            <asp:LinkButton  ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Maloaiphong") %>'  Text='<%# Eval("Tenloaiphong") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
            <br />
          
        </ItemTemplate>
    </asp:DataList></h1>
    <br />
     <h1 class="zzz"><asp:DataList CssClass="dtl1" ID="DataList2" runat="server">
        <ItemTemplate>
            
            <asp:LinkButton  ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaTang") %>'  Text='<%# Eval("TenTang") %>' OnClick="LinkButton1_Click1" ></asp:LinkButton>
            <br />
          
        </ItemTemplate>
    </asp:DataList></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <asp:DataList ID="DataList3" runat="server" DataKeyField="MaPhong" DataSourceID="SqlDataSource1" style="margin-right: 1208px" BackColor="#CCCCCC" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" RepeatColumns="5" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" GridLines="Both">
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <ItemStyle BackColor="White" />
        <ItemTemplate>
            MaPhong:
            <asp:Label ID="MaPhongLabel" runat="server" Text='<%# Eval("MaPhong") %>' />
            <br />
            TenTrangThai:
            <asp:Label ID="TenTrangThaiLabel" runat="server" Text='<%# Eval("TenTrangThai") %>' />
            <br />
            TenTang:
            <asp:Label ID="TenTangLabel" runat="server" Text='<%# Eval("TenTang") %>' />
            <br />
            TenLoaiPhong:
            <asp:Label ID="TenLoaiPhongLabel" runat="server" Text='<%# Eval("TenLoaiPhong") %>' />
            <br />
            HinhAnh:
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# "~/images/"+Eval("HinhAnh") %>' Width="200px" Height="100px" />
            <br />
            GiaPhong:
            <asp:Label ID="GiaPhongLabel" runat="server" Text='<%# Eval("GiaPhong") %>' />
            <br />
            MieuTa:
            <asp:Label ID="MieuTaLabel" runat="server" Text='<%# Eval("MieuTa") %>' />
            <br />
            <br />
        </ItemTemplate>
         <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qlyksConnectionString %>" SelectCommand="SELECT Phong.MaPhong, TrangThaiPhong.TenTrangThai, Tang.TenTang, LoaiPhong.TenLoaiPhong, LoaiPhong.HinhAnh, LoaiPhong.GiaPhong, LoaiPhong.MieuTa FROM Phong INNER JOIN TrangThaiPhong ON Phong.MaTrangThai = TrangThaiPhong.MaTrangThai INNER JOIN LoaiPhong ON Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong INNER JOIN Tang ON Phong.MaTang = Tang.MaTang ORDER BY Tang.MaTang"></asp:SqlDataSource>

   <br />
    <asp:DataList ID="DataList4" runat="server" style="margin-right: 1208px" BackColor="White" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" RepeatColumns="5" >
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("maphong") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("matrangthai") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("matang") %>'></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("maloaiphong") %>'></asp:Label>
            <br />
           
        </ItemTemplate>
    
         </asp:DataList>

</asp:Content>
