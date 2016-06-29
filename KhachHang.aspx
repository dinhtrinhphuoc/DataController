<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KhachHang.aspx.cs" Inherits="KhachHang" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Khách Hàng</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="App_Themes/web/css/bootstrap.min.css" rel="stylesheet" />
    <link href="App_Themes/web/css/ie10-viewport-bug-workaround.css" rel="stylesheet" />
    <link href="App_Themes/web/css/starter-template.css" rel="stylesheet" />
    <script src="App_Themes/web/js/ie-emulation-modes-warning.js"></script>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Dashboard Buy Online</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="KhachHang.aspx">KHÁCH HÀNG</a></li>
                    <li><a href="ChiTietHoaDon.aspx">CHI TIẾT HÓA ĐƠN</a></li>
                    <li><a href="HoaDon.aspx">HÓA ĐƠN</a></li>
                    <li><a href="SanPham.aspx">SẢN PHẨM</a></li>
                    <li><a href="LoaiSanPham.aspx">LOẠI SẢN PHẨM</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>

    <div class="container">
        <div class="starter-template">
            <form id="form1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USERNAME" DataSourceID="SqlDataSource2" Width="1024px" CellPadding="4" HorizontalAlign="Center" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" ReadOnly="True" SortExpression="USERNAME">
                        </asp:BoundField>

                        <asp:BoundField DataField="PASSWORDS" HeaderText="PASSWORDS" SortExpression="PASSWORDS">
                        </asp:BoundField>

                        <asp:BoundField DataField="TEN_KH" HeaderText="TÊN KHÁCH HÀNG" SortExpression="TEN_KH">
                        </asp:BoundField>

                        <asp:BoundField DataField="DIA_CHI" HeaderText="ĐỊA CHỈ" SortExpression="DIA_CHI">
                        </asp:BoundField>

                        <asp:BoundField DataField="SDT" HeaderText="SỐ ĐIỆN THOẠI" SortExpression="SDT">
                        </asp:BoundField>

                        <asp:BoundField DataField="GMAIL" HeaderText="GMAIL" SortExpression="GMAIL">
                        </asp:BoundField>

                        <asp:CommandField ButtonType="Button" HeaderText="THỰC HIỆN" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True">
                        <ControlStyle BorderStyle="Solid" BorderWidth="2px" CssClass="btn btn-success" Width="100px" />
                        </asp:CommandField>

                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle Height="50px" BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [KHACH_HANG]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [KHACH_HANG] WHERE [USERNAME] = @original_USERNAME AND [PASSWORDS] = @original_PASSWORDS AND [TEN_KH] = @original_TEN_KH AND [DIA_CHI] = @original_DIA_CHI AND [SDT] = @original_SDT AND [GMAIL] = @original_GMAIL" InsertCommand="INSERT INTO [KHACH_HANG] ([USERNAME], [PASSWORDS], [TEN_KH], [DIA_CHI], [SDT], [GMAIL]) VALUES (@USERNAME, @PASSWORDS, @TEN_KH, @DIA_CHI, @SDT, @GMAIL)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [KHACH_HANG] SET [PASSWORDS] = @PASSWORDS, [TEN_KH] = @TEN_KH, [DIA_CHI] = @DIA_CHI, [SDT] = @SDT, [GMAIL] = @GMAIL WHERE [USERNAME] = @original_USERNAME AND [PASSWORDS] = @original_PASSWORDS AND [TEN_KH] = @original_TEN_KH AND [DIA_CHI] = @original_DIA_CHI AND [SDT] = @original_SDT AND [GMAIL] = @original_GMAIL">
                    <DeleteParameters>
                        <asp:Parameter Name="original_USERNAME" Type="String" />
                        <asp:Parameter Name="original_PASSWORDS" Type="String" />
                        <asp:Parameter Name="original_TEN_KH" Type="String" />
                        <asp:Parameter Name="original_DIA_CHI" Type="String" />
                        <asp:Parameter Name="original_SDT" Type="String" />
                        <asp:Parameter Name="original_GMAIL" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="USERNAME" Type="String" />
                        <asp:Parameter Name="PASSWORDS" Type="String" />
                        <asp:Parameter Name="TEN_KH" Type="String" />
                        <asp:Parameter Name="DIA_CHI" Type="String" />
                        <asp:Parameter Name="SDT" Type="String" />
                        <asp:Parameter Name="GMAIL" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PASSWORDS" Type="String" />
                        <asp:Parameter Name="TEN_KH" Type="String" />
                        <asp:Parameter Name="DIA_CHI" Type="String" />
                        <asp:Parameter Name="SDT" Type="String" />
                        <asp:Parameter Name="GMAIL" Type="String" />
                        <asp:Parameter Name="original_USERNAME" Type="String" />
                        <asp:Parameter Name="original_PASSWORDS" Type="String" />
                        <asp:Parameter Name="original_TEN_KH" Type="String" />
                        <asp:Parameter Name="original_DIA_CHI" Type="String" />
                        <asp:Parameter Name="original_SDT" Type="String" />
                        <asp:Parameter Name="original_GMAIL" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />


                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">
                    Insert</button>         
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">KHÁCH HÀNG</h4>
                            </div>
                            <div class="modal-body">
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="USERNAME" DataSourceID="SqlDataSource2" OnPageIndexChanging="FormView1_PageIndexChanging" HorizontalAlign="Center" DefaultMode="Insert">
                                 
                                    <InsertItemTemplate>

                                        <table>
                                            <tr>
                                                <th>USERNAME</th>

                                                <td>
                                                    <div class="form-group">
                                                    <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' CssClass="form-control"  /></td>
                                                </div>
                                            </tr>

                                            <tr>
                                                <th>PASSWORDS</th>
                                                <td>
                                                     <div class="form-group">
                                                    <asp:TextBox ID="PASSWORDSTextBox" runat="server" Text='<%# Bind("PASSWORDS") %>' CssClass="form-control" /></td>
                                                </div>
                                            </tr>

                                            <tr>
                                                <th>TÊN KHÁCH HÀNG</th>
                                                <td>
                                                     <div class="form-group">
                                                    <asp:TextBox ID="TEN_KHTextBox" runat="server" Text='<%# Bind("TEN_KH") %>' CssClass="form-control" /></td>
                                                </div>
                                            </tr>

                                             <tr>
                                                <th>ĐỊA CHỈ</th>
                                                <td>
                                                     <div class="form-group">
                                                    <asp:TextBox ID="DIA_CHITextBox" runat="server" Text='<%# Bind("DIA_CHI") %>'  CssClass="form-control" /></td>
                                                </div>
                                            </tr>

                                            <tr>
                                                <th>SỐ ĐIỆN THOẠI</th>
                                                <td>
                                                     <div class="form-group">
                                                    <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>'  CssClass="form-control" /></td>
                                                </div>
                                            </tr>

                                            <tr>
                                                <th>GMAIL</th>
                                                <td>
                                                     <div class="form-group">
                                                    <asp:TextBox ID="GMAILTextBox" runat="server" Text='<%# Bind("GMAIL") %>' CssClass="form-control" /></td>
                                                </div>
                                            </tr>
                                        </table>
 
                                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-info" />
                                        &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass ="btn btn-info"/>
                                    </InsertItemTemplate>
                                    
                                </asp:FormView>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="App_Themes/web/js/jquery.min.js"><\/script>')</script>
    <script src="App_Themes/web/js/bootstrap.min.js"></script>
    <script src="App_Themes/web/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
