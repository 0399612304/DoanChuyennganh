<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sukien.aspx.cs" Inherits="DoAN_QLKhachSan.sukien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSK" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
           
            Hình ảnh sự kiện :
            <asp:Image ID="Image1"  runat="server" ImageUrl='<%# "~/Image/"+Eval("Images") %>' Width="100%" Height="100px"  />
            <br />
            Mô tả sự kiện:
            <asp:Label ID="MotaLabel" CssClass="mota" runat="server" Text='<%# Eval("Mota") %>' />
            <br />
            Motacuthe:
            <asp:Label ID="MotacutheLabel" CssClass="mota" runat="server" Text='<%# Eval("Motacuthe") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qlyksConnectionString %>" DeleteCommand="DELETE FROM [SuKien] WHERE [MaSK] = @MaSK" InsertCommand="INSERT INTO [SuKien] ([MaSK], [TenSK], [Images], [Mota], [Motacuthe]) VALUES (@MaSK, @TenSK, @Images, @Mota, @Motacuthe)" SelectCommand="SELECT * FROM [SuKien]" UpdateCommand="UPDATE [SuKien] SET [TenSK] = @TenSK, [Images] = @Images, [Mota] = @Mota, [Motacuthe] = @Motacuthe WHERE [MaSK] = @MaSK">
        <DeleteParameters>
            <asp:Parameter Name="MaSK" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSK" Type="Int32" />
            <asp:Parameter Name="TenSK" Type="String" />
            <asp:Parameter Name="Images" Type="String" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="Motacuthe" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSK" Type="String" />
            <asp:Parameter Name="Images" Type="String" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="Motacuthe" Type="String" />
            <asp:Parameter Name="MaSK" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
