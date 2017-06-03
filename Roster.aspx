<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Roster.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Baltimore Orioles</h1>
        <p class="lead">The content on this page will provide up-to-date statistics of Baltimore Orioles players and organization. Find out more about the Orioles</p>
        <p><a href="OriolesNewsFeed.aspx" class="btn btn-primary btn-lg">Find out more</a></p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="Hits" HeaderText="Hits" SortExpression="Hits" />
                <asp:BoundField DataField="RBIs" HeaderText="RBIs" SortExpression="RBIs" />
                <asp:BoundField DataField="HomeRuns" HeaderText="HomeRuns" SortExpression="HomeRuns" />
                <asp:BoundField DataField="Average" HeaderText="Average" SortExpression="Average" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Players] WHERE [ID] = @original_ID AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Hits] = @original_Hits) OR ([Hits] IS NULL AND @original_Hits IS NULL)) AND (([RBIs] = @original_RBIs) OR ([RBIs] IS NULL AND @original_RBIs IS NULL)) AND (([HomeRuns] = @original_HomeRuns) OR ([HomeRuns] IS NULL AND @original_HomeRuns IS NULL)) AND (([Average] = @original_Average) OR ([Average] IS NULL AND @original_Average IS NULL))" InsertCommand="INSERT INTO [Players] ([ID], [LastName], [FirstName], [Hits], [RBIs], [HomeRuns], [Average]) VALUES (@ID, @LastName, @FirstName, @Hits, @RBIs, @HomeRuns, @Average)" SelectCommand="SELECT * FROM [Players]" UpdateCommand="UPDATE [Players] SET [LastName] = @LastName, [FirstName] = @FirstName, [Hits] = @Hits, [RBIs] = @RBIs, [HomeRuns] = @HomeRuns, [Average] = @Average WHERE [ID] = @original_ID AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Hits] = @original_Hits) OR ([Hits] IS NULL AND @original_Hits IS NULL)) AND (([RBIs] = @original_RBIs) OR ([RBIs] IS NULL AND @original_RBIs IS NULL)) AND (([HomeRuns] = @original_HomeRuns) OR ([HomeRuns] IS NULL AND @original_HomeRuns IS NULL)) AND (([Average] = @original_Average) OR ([Average] IS NULL AND @original_Average IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_Hits" Type="Int32" />
                <asp:Parameter Name="original_RBIs" Type="Int32" />
                <asp:Parameter Name="original_HomeRuns" Type="Int32" />
                <asp:Parameter Name="original_Average" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Hits" Type="Int32" />
                <asp:Parameter Name="RBIs" Type="Int32" />
                <asp:Parameter Name="HomeRuns" Type="Int32" />
                <asp:Parameter Name="Average" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Hits" Type="Int32" />
                <asp:Parameter Name="RBIs" Type="Int32" />
                <asp:Parameter Name="HomeRuns" Type="Int32" />
                <asp:Parameter Name="Average" Type="Decimal" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_Hits" Type="Int32" />
                <asp:Parameter Name="original_RBIs" Type="Int32" />
                <asp:Parameter Name="original_HomeRuns" Type="Int32" />
                <asp:Parameter Name="original_Average" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
