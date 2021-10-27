<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addsukien.aspx.cs" Inherits="DoAN_QLKhachSan.addsukien" %>
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSK" DataSourceID="SqlDataSource1" OnItemInserting="FormView1_ItemInserting" DefaultMode="Insert" Width="426px">
        <EditItemTemplate>
            MaSK:
            <asp:Label ID="MaSKLabel1" runat="server" Text='<%# Eval("MaSK") %>' />
            <br />
            TenSK:
            <asp:TextBox ID="TenSKTextBox" runat="server" Text='<%# Bind("TenSK") %>' />
            <br />
            Images:
            <asp:TextBox ID="ImagesTextBox" runat="server" Text='<%# Bind("Images") %>' />
            <br />
            Mota:
            <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
            <br />
            Motacuthe:
            <asp:TextBox ID="MotacutheTextBox" runat="server" Text='<%# Bind("Motacuthe") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Mã Sự Kiện:
            <asp:TextBox ID="MaSKTextBox" runat="server" Text='<%# Bind("MaSK") %>' />
            <br />
            Tên Sự Kiện:
            <asp:TextBox ID="TenSKTextBox" runat="server" Text='<%# Bind("TenSK") %>' />
            <br />
            Images:       
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            Mô Tả:
            <asp:TextBox ID="ImagesTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            Mô tả cụ thể:
            <asp:TextBox ID="MotacutheTextBox" runat="server" Text='<%# Bind("Motacuthe") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaSK:
            <br />
            <br />
            <asp:Label ID="MaSKLabel" runat="server" Text='<%# Eval("MaSK") %>' />
            <br />
            <br />
            <br />
            TenSK:<br />
            <br />
&nbsp;<asp:Label ID="TenSKLabel" runat="server" Text='<%# Bind("TenSK") %>' />
            <br />
            <br />
            <br />
            Images:<br />
            <br />
&nbsp;<asp:Label ID="ImagesLabel" runat="server" Text='<%# Bind("Images") %>' />
            <br />
            <br />
            <br />
            <br />
            Mota:<br />
            <br />
&nbsp;<asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' />
            <br />
            <br />
            <br />
            Motacuthe:<br />
            <br />
            &nbsp;<asp:Label ID="MotacutheLabel" runat="server" Text='<%# Bind("Motacuthe") %>' />
            <br />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:qlyksConnectionString %>" DeleteCommand="DELETE FROM [SuKien] WHERE [MaSK] = @original_MaSK AND (([TenSK] = @original_TenSK) OR ([TenSK] IS NULL AND @original_TenSK IS NULL)) AND (([Images] = @original_Images) OR ([Images] IS NULL AND @original_Images IS NULL)) AND (([Mota] = @original_Mota) OR ([Mota] IS NULL AND @original_Mota IS NULL)) AND (([Motacuthe] = @original_Motacuthe) OR ([Motacuthe] IS NULL AND @original_Motacuthe IS NULL))" InsertCommand="INSERT INTO [SuKien] ([MaSK], [TenSK], [Images], [Mota], [Motacuthe]) VALUES (@MaSK, @TenSK, @Images, @Mota, @Motacuthe)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SuKien]" UpdateCommand="UPDATE [SuKien] SET [TenSK] = @TenSK, [Images] = @Images, [Mota] = @Mota, [Motacuthe] = @Motacuthe WHERE [MaSK] = @original_MaSK AND (([TenSK] = @original_TenSK) OR ([TenSK] IS NULL AND @original_TenSK IS NULL)) AND (([Images] = @original_Images) OR ([Images] IS NULL AND @original_Images IS NULL)) AND (([Mota] = @original_Mota) OR ([Mota] IS NULL AND @original_Mota IS NULL)) AND (([Motacuthe] = @original_Motacuthe) OR ([Motacuthe] IS NULL AND @original_Motacuthe IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MaSK" Type="Int32" />
            <asp:Parameter Name="original_TenSK" Type="String" />
            <asp:Parameter Name="original_Images" Type="String" />
            <asp:Parameter Name="original_Mota" Type="String" />
            <asp:Parameter Name="original_Motacuthe" Type="String" />
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
            <asp:Parameter Name="original_MaSK" Type="Int32" />
            <asp:Parameter Name="original_TenSK" Type="String" />
            <asp:Parameter Name="original_Images" Type="String" />
            <asp:Parameter Name="original_Mota" Type="String" />
            <asp:Parameter Name="original_Motacuthe" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />

</asp:Content>
