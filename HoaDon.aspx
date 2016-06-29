<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HoaDon.aspx.cs" Inherits="HoaDon" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Hoa Don</title>
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
                    <li><a href="KhachHang.aspx">KHÁCH HÀNG</a></li>
                    <li><a href="ChiTietHoaDon.aspx">CHI TIẾT HÓA ĐƠN</a></li>
                    <li class="active"><a href="HoaDon.aspx">HÓA ĐƠN</a></li>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MA_HOA_DON,USERNAME" DataSourceID="SqlDataSource2" Width="1024px" CellPadding="4" HorizontalAlign="Center" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MA_HOA_DON" HeaderText="MÃ HÓA ĐƠN" ReadOnly="True" SortExpression="MA_HOA_DON"></asp:BoundField>

                        <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" ReadOnly="True"></asp:BoundField>

                        <asp:BoundField DataField="NGAY_DAT_HANG" HeaderText="NGÀY ĐẶT HÀNG" SortExpression="NGAY_DAT_HANG"></asp:BoundField>

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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HOA_DON]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [HOA_DON] WHERE [MA_HOA_DON] = @original_MA_HOA_DON AND [USERNAME] = @original_USERNAME AND [NGAY_DAT_HANG] = @original_NGAY_DAT_HANG" InsertCommand="INSERT INTO [HOA_DON] ([MA_HOA_DON], [USERNAME], [NGAY_DAT_HANG]) VALUES (@MA_HOA_DON, @USERNAME, @NGAY_DAT_HANG)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [HOA_DON] SET [NGAY_DAT_HANG] = @NGAY_DAT_HANG WHERE [MA_HOA_DON] = @original_MA_HOA_DON AND [USERNAME] = @original_USERNAME AND [NGAY_DAT_HANG] = @original_NGAY_DAT_HANG">
                    <DeleteParameters>
                        <asp:Parameter Name="original_MA_HOA_DON" Type="String" />
                        <asp:Parameter Name="original_USERNAME" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_NGAY_DAT_HANG" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MA_HOA_DON" Type="String" />
                        <asp:Parameter Name="USERNAME" Type="String" />
                        <asp:Parameter DbType="Date" Name="NGAY_DAT_HANG" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="NGAY_DAT_HANG" />
                        <asp:Parameter Name="original_MA_HOA_DON" Type="String" />
                        <asp:Parameter Name="original_USERNAME" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_NGAY_DAT_HANG" />
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
                                <h4 class="modal-title" id="myModalLabel">HÓA ĐƠN</h4>
                            </div>
                            <div class="modal-body">
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="MA_HOA_DON,USERNAME" DataSourceID="SqlDataSource2" HorizontalAlign="Center" DefaultMode="Insert">

                                    

                                    <InsertItemTemplate>

                                        <table>
                                            <tr>
                                                <th>MÃ HÓA ĐƠN</th>

                                                <td>
                                                    <div class="form-group">
                                                    <asp:TextBox ID="MA_HOA_DONTextBox" runat="server" Text='<%# Bind("MA_HOA_DON") %>' CssClass="form-control"  /></td>
                                                </div>
                                            </tr>

                                            <tr>
                                                <th>USERNAME</th>
                                                <td>
                                                     <div class="form-group">
                                                    <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' CssClass="form-control" /></td>
                                                </div>
                                            </tr>

                                             <tr>
                                                <th>NGÀY ĐẶT HÀNG</th>
                                                <td>
                                                     <div class="form-group">
                                                     <asp:TextBox ID="NGAY_DAT_HANGTextBox" runat="server" Text='<%# Bind("NGAY_DAT_HANG") %>' CssClass="form-control" /></td>
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
