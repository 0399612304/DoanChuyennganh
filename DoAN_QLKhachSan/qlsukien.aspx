<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="qlsukien.aspx.cs" Inherits="DoAN_QLKhachSan.qlsukien" %>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaSK" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Width="100%" Height="15px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="MaSK" HeaderText="Mã Sự Kiện" ReadOnly="True" SortExpression="MaSK" />
            <asp:BoundField DataField="TenSK" HeaderText="Tên Sự Kiện" SortExpression="TenSK" />
            <asp:BoundField DataField="Images" HeaderText="Images" SortExpression="Images" />
            <asp:BoundField DataField="Mota" HeaderText="Mô Tả" SortExpression="Mota" />
            <asp:BoundField DataField="Motacuthe" HeaderText="Mô Tả Cụ Thể" SortExpression="Motacuthe" />
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DoAN_QLKhachSan.App_Code.DataSetTableAdapters.SuKienTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_MaSK" Type="Int32" />
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
            <asp:Parameter Name="Original_MaSK" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="DataSetTableAdapters.SuKienTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_MaSK" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSK" Type="Int32" />
            <asp:Parameter Name="TenSK" Type="String" />
            <asp:Parameter Name="Images" Type="String" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="Motacuthe" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSK" Type="String" />
            <asp:Parameter Name="Images" Type="String" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="Motacuthe" Type="String" />
            <asp:Parameter Name="Original_MaSK" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaSK" DataSourceID="ObjectDataSource2" OnItemInserted="DetailsView1_ItemInserted1" OnItemInserting="DetailsView1_ItemInserting1" OnItemUpdated="DetailsView1_ItemUpdated1" OnItemUpdating="DetailsView1_ItemUpdating1" Height="50px" style="margin-top: 0px" Width="125px" AllowPaging="True"   >
        <Fields>
            <asp:BoundField DataField="MaSK" HeaderText="Mã Sự Kiện" ReadOnly="True" SortExpression="MaSK" />
            <asp:BoundField DataField="TenSK" HeaderText="Tên Sự Kiện" SortExpression="TenSK" />
            <asp:TemplateField HeaderText="Images" SortExpression="Images">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="85px" ImageUrl='<%# Eval("images","~/{0}") %>' Width="153px" />
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Images") %>'></asp:Label>
                    <asp:FileUpload ID="FUSua" runat="server" Width="270px" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:FileUpload ID="FUThem" runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="84px" ImageUrl='<%# Eval("images","~/{0}") %>' Width="156px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mô tả" SortExpression="Mota">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Mota") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Mota") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Mota") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Motacuthe" HeaderText="Mô tả cụ thể" SortExpression="Motacuthe" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />


    
    
</asp:Content>
