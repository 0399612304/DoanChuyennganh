<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="DoAN_QLKhachSan.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="TÀI KHOẢN"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttaikhoan" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lb2" runat="server" Text="MATKHAU"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmatkhau" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>ADMIN</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Lễ Tân</asp:ListItem>
                        <asp:ListItem>Buồng Phòng</asp:ListItem>
                        <asp:ListItem>Dịch Vụ</asp:ListItem>
                    </asp:DropDownList>
                </td>                
            </tr>
                <asp:Label ID="lba2" runat="server" ></asp:Label>
                       
        </table>
      
                    <asp:Button ID="btndangnhap" runat="server" Text="ĐĂNG NHẬP" OnClick="btndangnhap_Click1"  />
                    
    </form>
</body>
</html>
