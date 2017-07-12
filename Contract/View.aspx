<%@ Page Title="View Contract" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="Contract.View" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>View</h1>
        <p>ID:
            <asp:TextBox ID="IDBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <p>Title:
            <asp:TextBox ID="TitleBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <p>Type:
            <asp:TextBox ID="TypeBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <p>Party Name:
            <asp:TextBox ID="PartyNameBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <p>Stage:
            <asp:TextBox ID="StageBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <p>Status:
            <asp:TextBox ID="StatusBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <p>Risk:
            <asp:TextBox ID="RiskBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <p>Effective Date:
            <asp:TextBox ID="EffectiveBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <p>Expiry Date:
            <asp:TextBox ID="ExpiryBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <p>Comment:
            <asp:TextBox ID="CommentBox" runat="server" Width="100px" Height="20px"></asp:TextBox></p>
        <asp:Button ID="Button1" runat="server" Text="Update Contract" OnClick="Button1_Click"/>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
