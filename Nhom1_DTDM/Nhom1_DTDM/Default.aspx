<%@ Page Title="FPT SHOP" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Nhom1_DTDM._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured" style="background:#F36F20;>
        <div class="content-wrapper" style="background:#F36F20;">
            <hgroup class="title">
                <h2 style="color:#ffd80">CHÀO MỪNG BẠN ĐẾN WEBSITE FPTSHOP.COM.VN</h2>
            </hgroup>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Banner.jpg" Width="100%"/>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Cửa Hàng FPT SHOP</h3>
    <ol class="round">
        <li class="one">
            <h3 style="color:#F36F20">Khách Hàng</h3>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="KETNOI">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:BoundField DataField="SoDT" HeaderText="SoDT" SortExpression="SoDT" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource ID="KETNOI" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom1_DTDMConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT]) VALUES (@MaKH, @TenKH, @DiaChi, @SoDT)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [DiaChi] = @DiaChi, [SoDT] = @SoDT WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SoDT" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SoDT" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h3 style="color:#F36F20">Sản Phẩm</h3>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="Sanpham">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource ID="Sanpham" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom1_DTDMConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [SoLuong], [MoTa]) VALUES (@MaSP, @TenSP, @SoLuong, @MoTa)" SelectCommand="SELECT [MaSP], [TenSP], [SoLuong], [MoTa] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [SoLuong] = @SoLuong, [MoTa] = @MoTa WHERE [MaSP] = @MaSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="MaSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h3 style="color:#F36F20;">Chi tiết hóa đơn</h3>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP,MaHD" DataSourceID="Chitiethoadon">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="SoLuongMua" HeaderText="SoLuongMua" SortExpression="SoLuongMua" />
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="DonGiaBan" HeaderText="DonGiaBan" SortExpression="DonGiaBan" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource ID="Chitiethoadon" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom1_DTDMConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaSP] = @MaSP AND [MaHD] = @MaHD" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaSP], [SoLuongMua], [MaHD], [DonGiaBan]) VALUES (@MaSP, @SoLuongMua, @MaHD, @DonGiaBan)" SelectCommand="SELECT [MaSP], [SoLuongMua], [MaHD], [DonGiaBan] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuongMua] = @SoLuongMua, [DonGiaBan] = @DonGiaBan WHERE [MaSP] = @MaSP AND [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="SoLuongMua" Type="String" />
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="DonGiaBan" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoLuongMua" Type="String" />
                    <asp:Parameter Name="DonGiaBan" Type="Decimal" />
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="four">
            <h3 style="color:#F36F20;">Loại Sản Phẩm</h3>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLSP" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                    <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom1_DTDMConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (@MaLSP, @TenLSP)" SelectCommand="SELECT * FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @MaLSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaLSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLSP" Type="String" />
                    <asp:Parameter Name="TenLSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLSP" Type="String" />
                    <asp:Parameter Name="MaLSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five">
            <h3 style="color:#F36F20;">Hóa Đơn</h3>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource2">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="NgayLap" HeaderText="NgayLap" SortExpression="NgayLap" />
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom1_DTDMConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [NgayLap], [MaKH]) VALUES (@MaHD, @NgayLap, @MaKH)" SelectCommand="SELECT [MaHD], [NgayLap], [MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayLap] = @NgayLap, [MaKH] = @MaKH WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="NgayLap" Type="DateTime" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NgayLap" Type="DateTime" />
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
