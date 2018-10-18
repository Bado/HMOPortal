<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="txtpage.aspx.vb" Inherits="WebApplication4.txtpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <div style="width: 375px; height: 170px; margin-left: 126px">
        <asp:Panel ID="Panel1" runat="server" Height="164px" Width="356px">
            <div style="border: thin groove #666666; height: 157px; margin-top: 0px; width: 346px; margin-left: 5px;">
                <div style="background-color: #3B3B3B; height: 19px; margin-top: 0px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label60" runat="server" ForeColor="White" Text="Browse Item"></asp:Label>
                </div>
                &nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="brow" runat="server" ForeColor="Black" Text="Browse StaffID"></asp:Label>
                &nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="positionid4" runat="server" Font-Size="X-Small" Height="27px" Width="293px">
                </asp:DropDownList>
                &nbsp;&nbsp; &nbsp; &nbsp;<hr /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="posedit7" runat="server" Height="29px" style="margin-left: -11px" Text="Select" Width="85px" />
                <br />
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
    </div>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
