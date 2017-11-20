<%@ Page Title="Sözleşme Arama" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Contract.Search" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Sözleşme Arama</h2>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="350px" Visible="true"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ara" Height="32px" Width="80px"/>
        </p>
        <asp:GridView ID="GridView2" 
            runat="server" 
           
            AutoGenerateColumns="False" 
            DataKeyNames="ContractId" Height="226px" Width="1000px" BackColor="White" BorderColor="#999999" BorderStyle="Double" BorderWidth="1px"  CellPadding="3" CellSpacing="3" 
            OnRowDeleting="GridView2_RowDeleting" OnSelectedIndexChanging="GridView2_SelectedIndexChanging">
            <AlternatingRowStyle  />
            <Columns>
                <asp:BoundField DataField="ContractId" HeaderText="Sözleşme No." ReadOnly="True" SortExpression="ContractId" InsertVisible="False" />
                <asp:BoundField DataField="Title" HeaderText="Sözleşme Adı" SortExpression="Title" />
                <asp:BoundField DataField="PartyName" HeaderText="Taraf" SortExpression="PartyName" />
                <asp:BoundField DataField="EffectiveDate" HeaderText="Başlama Süresi" SortExpression="EffectiveDate" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:BoundField DataField="ExpiryDate" HeaderText="Bitiş Süresi" SortExpression="ExpiryDate" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button runat="server" UseSubmitBehavior="true" Text="Sil" CommandName="Delete" CausesValidation="False" ID="btnAbc" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
                
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="#121082" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>