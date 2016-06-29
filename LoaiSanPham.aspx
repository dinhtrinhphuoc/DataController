<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoaiSanPham.aspx.cs" Inherits="LoaiSanPham" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Loai San Pham</title>
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
                    <li><a href="HoaDon.aspx">HÓA ĐƠN</a></li>
                    <li><a href="SanPham.aspx">SẢN PHẨM</a></li>
                    <li class="active"><a href="LoaiSanPham.aspx">LOẠI SẢN PHẨM</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>

    <div class="container">
        <div class="starter-template">
            <form id="form1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MA_LOAI" DataSourceID="SqlDataSource2" Width="1024px" CellPadding="4" HorizontalAlign="Center" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MA_LOAI" HeaderText="MÃ LOẠI" ReadOnly="True" SortExpression="MA_LOAI"></asp:BoundField>

                        <asp:BoundField DataField="TEN_LOAI_SP" HeaderText="TÊN LOẠI SẢN PHẨM" SortExpression="TEN_LOAI_SP"></asp:BoundField>

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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LOAI_SAN_PHAM] WHERE [MA_LOAI] = @original_MA_LOAI AND [TEN_LOAI_SP] = @original_TEN_LOAI_SP" InsertCommand="INSERT INTO [LOAI_SAN_PHAM] ([MA_LOAI], [TEN_LOAI_SP]) VALUES (@MA_LOAI, @TEN_LOAI_SP)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [LOAI_SAN_PHAM]" UpdateCommand="UPDATE [LOAI_SAN_PHAM] SET [TEN_LOAI_SP] = @TEN_LOAI_SP WHERE [MA_LOAI] = @original_MA_LOAI AND [TEN_LOAI_SP] = @original_TEN_LOAI_SP">
                    <DeleteParameters>
                        <asp:Parameter Name="original_MA_LOAI" Type="String" />
                        <asp:Parameter Name="original_TEN_LOAI_SP" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MA_LOAI" Type="String" />
                        <asp:Parameter Name="TEN_LOAI_SP" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TEN_LOAI_SP" Type="String" />
                        <asp:Parameter Name="original_MA_LOAI" Type="String" />
                        <asp:Parameter Name="original_TEN_LOAI_SP" Type="String" />
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
                                <h4 class="modal-title" id="myModalLabel">LOẠI SẢN PHẨM</h4>
                            </div>
                            <div class="modal-body">
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="MA_LOAI" DataSourceID="SqlDataSource2" HorizontalAlign="Center" DefaultMode="Insert">                                 
                                  
                                     <InsertItemTemplate>
                                         <table>
                                            <tr>
                                                <th>MÃ LOẠI</th>

                                                <td>
                                                    <div class="form-group">
                                                    <asp:TextBox ID="MA_LOAITextBox" runat="server" Text='<%# Bind("MA_LOAI") %>' CssClass="form-control"  /></td>
                                                </div>
                                            </tr>

                                            <tr>
                                                <th>TÊN LOẠI SẢN PHẨM</th>
                                                <td>
                                                     <div class="form-group">
                                                     <asp:TextBox ID="TEN_LOAI_SPTextBox" runat="server" Text='<%# Bind("TEN_LOAI_SP") %>' CssClass="form-control"  /></td>
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
