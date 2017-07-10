<%@ Page Title="Search Contract" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Contract.Search" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Search</h1>
        <p></p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="142px" BorderColor="Silver" ForeColor="RosyBrown" Visible="true" ></asp:TextBox>
        &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Height="26px" Width="80px" BackColor="Thistle" Font-Italic="true" />
        </p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ContractId" Height="226px" Width="530px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="Double" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ContractId" HeaderText="ContractId" ReadOnly="True" SortExpression="ContractId" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="PartyName" HeaderText="PartyName" SortExpression="PartyName" />
                <asp:BoundField DataField="CStatus" HeaderText="CStatus" SortExpression="CStatus" />
                <asp:BoundField DataField="EffectiveDate" HeaderText="EffectiveDate" SortExpression="EffectiveDate" />
                <asp:BoundField DataField="ExpiryDate " HeaderText="ExpiryDate " SortExpression="ExpiryDate " />
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
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>