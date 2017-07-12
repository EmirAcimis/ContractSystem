<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Contract._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Home</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ContractId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ContractId" HeaderText="ContractId" InsertVisible="False" ReadOnly="True" SortExpression="ContractId" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="CType" HeaderText="CType" SortExpression="CType" />
                <asp:BoundField DataField="PartyName" HeaderText="PartyName" SortExpression="PartyName" />
                <asp:BoundField DataField="Stage" HeaderText="Stage" SortExpression="Stage" />
                <asp:BoundField DataField="CStatus" HeaderText="CStatus" SortExpression="CStatus" />
                <asp:BoundField DataField="Risk" HeaderText="Risk" SortExpression="Risk" />
                <asp:BoundField DataField="EffectiveDate" HeaderText="EffectiveDate" SortExpression="EffectiveDate" />
                <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractDatabaseConnectionString %>" SelectCommand="SELECT * FROM [ContractTable]"></asp:SqlDataSource>
        <br></br>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ContractId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ContractId" HeaderText="ContractId" InsertVisible="False" ReadOnly="True" SortExpression="ContractId" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="CType" HeaderText="CType" SortExpression="CType" />
                <asp:BoundField DataField="PartyName" HeaderText="PartyName" SortExpression="PartyName" />
                <asp:BoundField DataField="Stage" HeaderText="Stage" SortExpression="Stage" />
                <asp:BoundField DataField="CStatus" HeaderText="CStatus" SortExpression="CStatus" />
                <asp:BoundField DataField="Risk" HeaderText="Risk" SortExpression="Risk" />
                <asp:BoundField DataField="EffectiveDate" HeaderText="EffectiveDate" SortExpression="EffectiveDate" />
                <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            </Columns>
        </asp:GridView>
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
