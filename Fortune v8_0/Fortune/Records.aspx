<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Records.aspx.cs" Inherits="Fortune.Records1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="RecordsSouceSQL" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Fortune_20150327190418ConnectionString %>" SelectCommand="SELECT [name], [score], [date] FROM [Records] ORDER BY [score] DESC"></asp:SqlDataSource>
    <asp:GridView HorizontalAlign="Center" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="RecordsSouceSQL" ForeColor="Black" GridLines="Vertical" AllowPaging="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="score" HeaderText="score" SortExpression="score" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="К игре &gt;&gt;" />
    </div>
</asp:Content>
