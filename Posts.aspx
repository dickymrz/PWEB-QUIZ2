<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Posts.aspx.cs" Inherits="Webtest.WebForm1" MasterPageFile="~/Test.Master" %>
<asp:Content ID="post_content" ContentPlaceHolderID="TestContent" runat ="server">

        <div>
            <h1>Forum</h1>
            <asp:Button ID="Button1" runat="server" Text="Buat Post" OnClick="Button1_Click" PostBackUrl="~/CreatePost.aspx" />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="320px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="540px">
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="post" HeaderText="Post" SortExpression="post" />
                </Columns>
                <RowStyle Width="10px" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestDBConnection %>" SelectCommand="SELECT [username], [post] FROM [Posts]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        </div>
</asp:Content> 
