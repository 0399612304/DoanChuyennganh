<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addloaidichvu.aspx.cs" Inherits="DoAN_QLKhachSan.addloaidichvu" %>
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
     <asp:FormView ID="FormView1" runat="server" DataKeyNames="Maloaidv" DataSourceID="SqlDataSource1" OnItemInserting="FormView1_ItemInserting" DefaultMode="Insert" Width="426px">
        <EditItemTemplate>
            Ma loại dịch vụ:
            <asp:Label ID="MaSKLabel1" runat="server" Text='<%# Eval("Maloaidv") %>' />
            <br />
            Tên loại dịch vụ:
            <asp:TextBox ID="TenSKTextBox" runat="server" Text='<%# Bind("Tenloaidv") %>' />
            <br />
            Images:
            <asp:TextBox ID="ImagesTextBox" runat="server" Text='<%# Bind("hinhanh") %>' />
            <br />
            Miêu tả:
            <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("mieuta") %>' />
            <br />
           
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Mã loại dịch vụ:
            <asp:TextBox ID="MaSKTextBox" runat="server" Text='<%# Bind("Maloaidv") %>' />
            <br />
            Tên loại dịch vụ:
            <asp:TextBox ID="TenSKTextBox" runat="server" Text='<%# Bind("Tenloaidv") %>' />
            <br />
            Hình ảnh:       
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            Miêu tả:
            <asp:TextBox ID="ImagesTextBox" runat="server" Text='<%# Bind("mieuta") %>' />
            <br />
            
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Mã loại dịch vụ:
            <br />
            <br />
            <asp:Label ID="MaSKLabel" runat="server" Text='<%# Eval("Maloaidv") %>' />
            <br />
            <br />
            <br />
            Tên loại dịch vụ:<br />
            <br />
&nbsp;<asp:Label ID="TenSKLabel" runat="server" Text='<%# Bind("Tenloaidv") %>' />
            <br />
            <br />
            <br />
            Hình ảnh:<br />
            <br />
&nbsp;<asp:Label ID="ImagesLabel" runat="server" Text='<%# Bind("hinhanh") %>' />
            <br />
            <br />
            <br />
            <br />
            Miêu tả:<br />
            <br />
&nbsp;<asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("mieuta") %>' />
            <br />
            <br />
            <br />
            
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:qlyksConnectionString %>" DeleteCommand="DELETE FROM [loaidichvu1] WHERE [Maloaidv] = @original_Maloaidv AND (([Tenloaidv] = @original_Tenloaidv) OR ([Tenloaidv] IS NULL AND @original_Tenloaidv IS NULL)) AND (([hinhanh] = @original_hinhanh) OR ([hinhanh] IS NULL AND @original_hinhanh IS NULL)) AND (([mieuta] = @original_mieuta) OR ([mieuta] IS NULL AND @original_mieuta IS NULL))" InsertCommand="INSERT INTO [loaidichvu1] ([Maloaidv], [Tenloaidv], [hinhanh], [mieuta]) VALUES (@Maloaidv, @Tenloaidv, @hinhanh, @Mieuta)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [loaidichvu1]" UpdateCommand="UPDATE [loaidichvu1] SET [Tenloaidv] = @Tenloaidv, [hinhanh] = @hinhanh, [Mieuta] = @Mieuta WHERE [Maloaidv] = @original_Maloaidv AND (([Tenloaidv] = @original_Tenloaidv) OR ([Tenloaidv] IS NULL AND @original_Tenloaidv IS NULL)) AND (([hinhanh] = @original_hinhanh) OR ([hinhanh] IS NULL AND @original_hinhanh IS NULL)) AND (([mieuta] = @original_mieuta) OR ([mieuta] IS NULL AND @original_mieuta IS NULL)) ">
        <DeleteParameters>
            <asp:Parameter Name="original_Maloaidv" Type="Int32" />
            <asp:Parameter Name="original_tenloaidv" Type="String" />
            <asp:Parameter Name="original_hinhanh" Type="String" />
            <asp:Parameter Name="original_Mieuta" Type="String" />
            </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="original_Maloaidv" Type="Int32" />
            <asp:Parameter Name="original_tenloaidv" Type="String" />
            <asp:Parameter Name="original_hinhanh" Type="String" />
            <asp:Parameter Name="original_Mieuta" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenloaidv" Type="String" />
            <asp:Parameter Name="hinhanh" Type="String" />
            <asp:Parameter Name="Mieuta" Type="String" />
            <asp:Parameter Name="original_Maloaidv" Type="Int32" />
            <asp:Parameter Name="original_Tenloaidv" Type="String" />
            <asp:Parameter Name="original_hinhanh" Type="String" />
            <asp:Parameter Name="original_Mieuta" Type="String" />
     
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />
</asp:Content>
