<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="usersright.aspx.vb" Inherits="WebApplication4.usersright" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


    .style1
    {
        color: #FFFFFF;
        font-size: xx-small;
        background-color: #800000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<div style="margin-left: 99px; width: 688px; height: 764px;">
                                <div style="border: thin groove #666666; width: 673px; height: 741px;" __designer:mapid="21c">
                                    <div style="background-color: #3B3B3B; height: 24px; width: 673px;" __designer:mapid="21d">
                                        &nbsp;<asp:Label ID="codelbl1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="White" Text="User's  Account Management"></asp:Label>
                                    </div>
                                    <div style="height: 47px">
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label28" runat="server" Text="Search Tool"></asp:Label>
                                        <br />
                                        <asp:ComboBox ID="searchtool" runat="server" AutoPostBack="True" DataSourceID="stafftabdb" DataTextField="names" DataValueField="userid" MaxLength="0" style="display: inline;">
                                        </asp:ComboBox>
                                        <hr style="height: -12px" />
                                        <br />
&nbsp;&nbsp;
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </div>
                                    <div style="margin-top: 15px; height: 64px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label30" runat="server" Text="Names"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        &nbsp;&nbsp;<asp:Label ID="Label20" runat="server" Text="User ID"></asp:Label>
                                        &nbsp;<asp:TextBox ID="userid" runat="server" Width="78px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" ForeColor="White" Height="16px" style="margin-left: -15px" Width="16px" />
                                        &nbsp;<asp:TextBox ID="NAMES" runat="server" Width="310px" Height="16px" ReadOnly="True"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="21px" Text="Select All" Width="94px" />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="admin" runat="server" Font-Bold="True" ForeColor="Maroon" Text="k" Font-Size="Medium" Visible="False" />
&nbsp;<hr />
                                    </div>
                                    <div style="height: 520px">
                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="18" style="margin-left: 13px" Width="620px">
                                            <Columns>
                                                <asp:BoundField DataField="menucode" HeaderText="Menu Code" SortExpression="menucode">
                                                <HeaderStyle Font-Size="Medium" />
                                                <ItemStyle Font-Size="Medium" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="menuname" HeaderText="Menu Name" SortExpression="menuname">
                                                <HeaderStyle Font-Size="Medium" />
                                                <ItemStyle Font-Size="Medium" />
                                                </asp:BoundField>
                                                <asp:CheckBoxField DataField="available" HeaderText="Available" SortExpression="available">
                                                <ControlStyle Font-Size="X-Large" />
                                                <HeaderStyle Font-Size="Medium" />
                                                <ItemStyle Font-Bold="True" Font-Size="X-Large" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:CheckBoxField>
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:BoundField DataField="userid" SortExpression="userid">
                                                <ControlStyle BackColor="White" BorderColor="White" BorderWidth="0px" Font-Size="XX-Small" ForeColor="White" />
                                                <HeaderStyle BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="0px" ForeColor="White" />
                                                <ItemStyle Font-Size="XX-Small" ForeColor="White" Height="0px" Width="1px" />
                                                </asp:BoundField>
                                            </Columns>
                                            <HeaderStyle BackColor="#333333" ForeColor="White" />
                                        </asp:GridView>
                                        <br />
                                        <hr />
                                        <br />
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
                                                <div style="width: 674px; height: 24px; margin-top: 0px; background-color: #3B3B3B; margin-left: 0px;" title="System Code Setup" __designer:mapid="230">
                                                    <asp:Label ID="statuspoint" runat="server" ForeColor="White"></asp:Label>
                                                    <br __designer:mapid="232" />
                                                    <br __designer:mapid="233" />
                                                </div>
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication4.My.MySettings.CnnString %>" SelectCommand="SELECT [userid], [menucode], [menuname], [available] FROM [usersmenu] WHERE ([userid] = @userid)" UpdateCommand="UPDATE usersmenu SET available = @available WHERE (userid = @userid) AND (menucode = @menucode)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="userid" Name="userid" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="available" />
                                            <asp:Parameter Name="userid" />
                                            <asp:Parameter Name="menucode" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="stafftabdb" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication4.My.MySettings.CnnString %>" SelectCommand="SELECT userid, names FROM useracct WHERE (userid &lt;&gt; 'admin') ORDER BY userid">
                                    </asp:SqlDataSource>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br __designer:mapid="21f" />
                                </div>
</div>
    <p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
