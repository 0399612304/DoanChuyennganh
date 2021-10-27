<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="DoAN_QLKhachSan.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h4 {
            text-align:center;
            width:70%;
            height:400px;
            margin-left:100px;
            background-color:white;
        }
        h4 a {
                text-decoration: none;
        }
        p.tieude{
            text-align:center;
            font-family:monospace;
            font-size:40px;
        }
        h1{ 
            width:30%;
            float:left;
            margin-right:5%;
        }
        p.text{
            text-align:center;
            width:20.4%;
            top:370px;
            position:absolute;
            color:white;
            font-size:18px;
            font-weight: bold;
            background-color:black;
            opacity:0.5;
        }
        p.text:hover{
            opacity:1;
        }
        h2{
            width:30%;
            float:left;
            margin-right:5%;
        }
        p.text2{
            text-align:center;
            width:20.4%;
            top:370px;
            position:absolute;
            color:white;
            font-size:18px;
            font-weight: bold;
            background-color:black;
            opacity:0.5;
        }
        p.text2:hover{
            opacity:1;
        }
        h3{
            width:30%;
            float:right;
        }
        p.text3{
            text-align:center;
            width:20.4%;
            top:370px;
            position:absolute;
            color:white;
            font-size:18px;
            font-weight: bold;
            background-color:black;
            opacity:0.5;
        }
        p.text3:hover{
            opacity:1;
        }
        h4{
            border-radius:10px;
            margin-left:20px;
            margin-top:40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h4>
        <asp:HyperLink ID="HyperLink2"  NavigateUrl="~/trangchu.aspx" runat="server">Vinpear Hotel</asp:HyperLink> 
         <br />
                     <br />
                     <br />
                     <br />
                     <br />
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/cosohatang.aspx"  runat="server">Cơ sở hạ tầng</asp:HyperLink>  <br />
                     <br />
                     <br />
                     <br />
                     <br />
    <asp:HyperLink ID="HyperLink3" NavigateUrl="~/khuyenmai.aspx" runat="server">Khuyến mãi</asp:HyperLink>  <br />
                     <br />
                     <br />
                     <br />
                     <br />
        </h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="tieude">VINPEARL HOTEL</p>
    <h1>
        <p class="text">Khách sạn lớn nhất trên thế giới</p>
        <asp:Image ID="Image1" width="100%" Height="200px" ImageUrl="./images/a1.png" runat="server" />
    </h1>
    <h2>
        <p class="text2">Phòng giữa biển đầu tiên tại việt nam</p>
        <asp:Image ID="Image2" width="100%" Height="200px" ImageUrl="./images/a2.png" runat="server" />
    </h2>
    <h3>
        <p class="text3">Khách sạn 8 sao đầu tiên trên thế giới</p>
        <asp:Image ID="Image3" width="100%" Height="200px" ImageUrl="./images/a3.jpg" runat="server" />
    </h3>
</asp:Content>
