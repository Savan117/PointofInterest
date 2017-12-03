<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchbyCategory.aspx.cs" Inherits="SearchbyCategory" %>
<asp:Content id="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/style.css"/>
    <style>
    .searchbar {
        width: 450px;
    }
        
    </style>

    <%--<form id="form1" runat="server">--%>
        <div class="container">
            <div id="searchbar" style="background-color:#004680; padding: 20px 20px; -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px;
             margin: auto; left: 0; right: 0; width:100%; height: 85px; text-align:center;">
                    <span style="color:white; text-align: center; font-size:22px; font-family: 'Vibur', cursive;">Type of Spot: </span>&nbsp; &nbsp; &nbsp;<asp:DropDownList ID="typeofspotDropDownList" runat="server" Width="220px" Height="30px" AutoPostBack="True"></asp:DropDownList> &nbsp; &nbsp; &nbsp
                    <span style="color:white; text-align: center; font-size:22px; font-family: 'Vibur', cursive;">Parish: </span> &nbsp; &nbsp; &nbsp; <asp:DropDownList ID="parishDropDownList" runat="server" Width="169px" Height="30px" AutoPostBack="True"></asp:DropDownList> &nbsp; &nbsp; &nbsp 

            </div>       

            <br /> <br /> <br />
            <div class="row">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PointofInterestConnectionString %>" SelectCommand="sp_select_SpotsOpeningHoursLocationbyNameParish" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="typeofspotDropDownList" Name="typeofspot" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="parishDropDownList" Name="parish" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SqlDataSource2" OnItemCommand="Repeater1_ItemCommand" >
                    <ItemTemplate>
                            <div class="col-sm-4 col-md-4">
                                <div class="panel panel-primary">
                                    <div class="panel-heading"><asp:Label ID="typeofspotLbl" runat="server"  Text='<%# Eval("typeofspot") %>' font-size="15px" font-color="white"></asp:Label> 
                                    </div>
                                    <div class="panel-body" style="padding:0px;">
                                        <a href="SpotContent.aspx"><asp:ImageButton ID="weatherconditionpanelImg" ImageUrl='<%# Eval("picturesdir")+"01.jpg" %>' Width="100%" Height="250px" runat="server" CommandName="weatherconditionpanelImg_Click" CommandArgument='<%# Eval("name") %>'/></a>
                                    </div>
                                    <div class="panel-footer" style="color:white;  background-color:#d9534f; font-weight:bold;" ><asp:Label ID="nameLbl" runat="server" Text='<%# Eval("name") %>' font-size="18px"  ></asp:Label> </div>
                                   <asp:Label Text="false" runat="server" Visible="false" ID="clickLbl"> </asp:Label>
                                </div>
                            </div>
                    </ItemTemplate>
                </asp:Repeater>                                      
            </div>
        </div>
    <%--</form>--%>
</asp:Content>