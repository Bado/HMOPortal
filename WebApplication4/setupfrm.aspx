<%@ Page Title="System Setup" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="setupfrm.aspx.vb" Inherits="WebApplication4.setupfrm" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">



    .style4
    {
        text-align: left;
    }
    .style1
    {
        color: #FFFFFF;
        font-size: xx-small;
        background-color: #800000;
    }
    #divc {
        height: 139px;
            margin-top: 0px;
        width: 455px;
    }
    #statediv {
        height: 15px;
    }
    #ddiv {
        width: 456px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
</p>
<div style="margin-left: 114px; width: 508px; height: 720px;">
                                <div style="border: thin groove #666666; width: 457px; height: 279px;" __designer:mapid="21c">
                                    <div style="background-color: #3B3B3B; height: 24px; width: 459px;" __designer:mapid="21d">
                                        &nbsp;<asp:Label ID="codelbl1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="White" Text="System Code Setup"></asp:Label>
                                    </div>
                                    <div style="height: 53px; margin-left: 238px">
                                        <asp:Label ID="Label19" runat="server" Text="Search Code"></asp:Label>
                                        <br />
                                        <asp:ComboBox ID="searchcode" runat="server" AutoCompleteMode="SuggestAppend" AutoPostBack="True">
                                        </asp:ComboBox>
                                        <hr />
                                        <br />
                                        <br />
                                    </div>
                                    <hr />
                                    <br __designer:mapid="21f" />
                                    <div id="divc" __designer:mapid="220">
                                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label16" runat="server" Text="Code"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                                        <asp:TextBox ID="stcode" runat="server" Height="22px" 
                            style="text-align: left; font-size: xx-small; " Width="110px" Font-Size="Large"></asp:TextBox>
                                        &nbsp;<asp:Button ID="Button1" runat="server" Height="22px" style="margin-left: -11px" Text="..." ToolTip="Search Code" Width="16px" Visible="False" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" Text="Price" Visible="False"></asp:Label>
                                        &nbsp;
                                        <asp:TextBox ID="price" runat="server" Height="17px" style="text-align: left; font-size: xx-small; " Width="100px" Visible="False"></asp:TextBox>
                                        <br __designer:mapid="226" />
                                        <br __designer:mapid="227" />
                                        <div ID="ddiv" __designer:mapid="228">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label17" runat="server" 
                                Text="Description"></asp:Label>
                                            &nbsp;&nbsp;
                                            <asp:TextBox ID="stname" runat="server" Height="22px" 
                                style="text-align: left; font-size: xx-small" Width="310px" Font-Size="Large"></asp:TextBox>
                                            <div class="style4" style="border: thin groove #999999; width: 454px; height: 30px; margin-top: 13px;" __designer:mapid="22b">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                                                    ID="FocusD1" runat="server" BackColor="White" BorderStyle="None" 
                                                    ForeColor="#3366FF" Height="16px" Width="41px" BorderColor="White" />
                                                &nbsp;<asp:Button 
                                    ID="bCancel" runat="server" CssClass="style1" 
                                    Height="25px" Text="Reset" Width="78px" BackColor="#3B3B3B" Font-Size="Small" />
                                                &nbsp;<asp:Button ID="bsave" runat="server" CssClass="style1" Height="25px" 
                                    Text="Save" Width="78px" BackColor="#3B3B3B" Font-Size="Small" />
                                                &nbsp;<asp:Button ID="bdelete" runat="server" CssClass="style1" height="25px" 
                                    Text="Delete" width="78px" BackColor="#3B3B3B" Font-Size="Small" />
                                                <div style="width: 454px; height: 24px; margin-top: 30px; background-color: #3B3B3B; margin-left: 0px;" title="System Code Setup" __designer:mapid="230">
                                                    <asp:Label ID="Statuslb" runat="server" ForeColor="White"></asp:Label>
                                                    <br __designer:mapid="232" />
                                                    <br __designer:mapid="233" />
                                                    <div style="width: 458px; height: 407px; margin-top: 9px;">
                                                        <br />
                                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Caption="Code Bank" CaptionAlign="Top" DataSourceID="SqlDataSource1" PageSize="15" style="margin-left: 6px; margin-top: 0px" Width="448px">
                                                            <Columns>
                                                                <asp:BoundField DataField="code1" HeaderText="code1" SortExpression="code1" />
                                                                <asp:BoundField DataField="descr" HeaderText="descr" SortExpression="descr" />
                                                                <asp:BoundField DataField="option1" HeaderText="option1" SortExpression="option1" />
                                                                <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:Label ID="lbl22" runat="server" Visible="False"></asp:Label>
                                                        <br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication4.My.MySettings.CnnString %>" SelectCommand="SELECT * FROM [codestab] WHERE ([option1] = @op1)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="op1" SessionField="opt1" Type="String" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
</div>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <div id="statediv">
    </div>
<p>
    &nbsp;</p>
</asp:Content>
