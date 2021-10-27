﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="qldichvu.aspx.cs" Inherits="DoAN_QLKhachSan.qldichvu" %>
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
    <br />
    <p>Thông Tin Dịch Vụ</p>
    <br />
     <asp:GridView ID="GridView1" runat="server" style="margin-top: 0px" AutoGenerateColumns="False" DataKeyNames="MaDV"  CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCreated="GridView1_RowCreated" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"  >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaDV" HeaderText="Mã Dịch Vụ" />      
            <asp:BoundField DataField="TenDV" HeaderText="Tên Dịch Vụ" />
            <asp:BoundField DataField="GiaDV" HeaderText="Giá Dịch Vụ" />
            <asp:BoundField DataField="MaLoaiDV" HeaderText="Dịch Vụ" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:CommandField ShowInsertButton="True" ShowSelectButton="True" />
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
    <br />
    <asp:Button ID="btnthem" runat="server" Text="Thêm dịch vụ" OnClick="btnthem_Click"  />
    <br />
    <br />
    <p>Thông Tin Loại Dịch Vụ</p>
    <br />
    <br />
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="MaLoaiDV" DataSourceID="ObjectDataSource1" ForeColor="Black" Width="100%">
         <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
             <asp:BoundField DataField="MaLoaiDV" HeaderText="Mã Loại Dịch Vụ" ReadOnly="True" SortExpression="MaLoaiDV" />
             <asp:BoundField DataField="TenLoaiDV" HeaderText="Tên Loại Dịch Vụ" SortExpression="TenLoaiDV" />
             <asp:BoundField DataField="HinhAnh" HeaderText="Hình Ảnh" SortExpression="HinhAnh" />
             <asp:BoundField DataField="Mieuta" HeaderText="Miêu tả" SortExpression="Mieuta" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
         <RowStyle BackColor="White" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>
     <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.LoaiDichVu1TableAdapter" UpdateMethod="Update">
         <DeleteParameters>
             <asp:Parameter Name="Original_MaLoaiDV" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="MaLoaiDV" Type="Int32" />
             <asp:Parameter Name="TenLoaiDV" Type="String" />
             <asp:Parameter Name="HinhAnh" Type="String" />
             <asp:Parameter Name="Mieuta" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="TenLoaiDV" Type="String" />
             <asp:Parameter Name="HinhAnh" Type="String" />
             <asp:Parameter Name="Mieuta" Type="String" />
             <asp:Parameter Name="Original_MaLoaiDV" Type="Int32" />
         </UpdateParameters>
     </asp:ObjectDataSource>
     <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaLoaiDV" DataSourceID="ObjectDataSource2" OnItemInserted="DetailsView1_ItemInserted1" OnItemInserting="DetailsView1_ItemInserting1" OnItemUpdated="DetailsView1_ItemUpdated1" OnItemUpdating="DetailsView1_ItemUpdating1" Height="50px" Width="125px">
         <Fields>
             <asp:BoundField DataField="MaLoaiDV" HeaderText="Mã Loại DV" ReadOnly="True" SortExpression="MaLoaiDV" />
             <asp:BoundField DataField="TenLoaiDV" HeaderText="Tên Loại DV" SortExpression="TenLoaiDV" />
             <asp:TemplateField HeaderText="Hình Ảnh" SortExpression="HinhAnh">
                 <EditItemTemplate>
                     <asp:Image ID="Image1" runat="server" Height="85px" ImageUrl='<%# Eval("Hinhanh","~/{0}") %>' Width="153px" />
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("hinhanh") %>'></asp:Label>
                    <asp:FileUpload ID="FUSua" runat="server" Width="270px" />
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:FileUpload ID="FUThem" runat="server" />
                 </InsertItemTemplate>
                 <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="84px" ImageUrl='<%# Eval("Hinhanh","~/{0}") %>' Width="156px" />
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="Mieuta" HeaderText="Miêu Tả" SortExpression="Mieuta" />
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
         </Fields>
     </asp:DetailsView>
     <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="DataSetTableAdapters.LoaiDichVu1TableAdapter" UpdateMethod="Update">
         <DeleteParameters>
             <asp:Parameter Name="Original_MaLoaiDV" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="MaLoaiDV" Type="Int32" />
             <asp:Parameter Name="TenLoaiDV" Type="String" />
             <asp:Parameter Name="HinhAnh" Type="String" />
             <asp:Parameter Name="Mieuta" Type="String" />
         </InsertParameters>
         <SelectParameters>
             <asp:ControlParameter ControlID="GridView2" Name="id" PropertyName="SelectedValue" Type="Int32" />
         </SelectParameters>
         <UpdateParameters>
             <asp:Parameter Name="TenLoaiDV" Type="String" />
             <asp:Parameter Name="HinhAnh" Type="String" />
             <asp:Parameter Name="Mieuta" Type="String" />
             <asp:Parameter Name="Original_MaLoaiDV" Type="Int32" />
         </UpdateParameters>
     </asp:ObjectDataSource>
    <br />
    
</asp:Content>
