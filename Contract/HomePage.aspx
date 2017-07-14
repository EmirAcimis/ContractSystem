<%@ Page Title="Anasayfa - Bildirimler" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
     CodeBehind="HomePage.aspx.cs" 
    Inherits="Contract.HomePage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Petkim A.Ş Sözleşme Yönetim Sistemi </h2>
        <asp:Label ID="Label1" runat="server" Text="7 GÜN İÇERİSİNDE SONLANACAK SÖZLEŞMELER" Style="position: static; font-size: medium; background-color: yellow; z-index: 1; left: 112px; margin-top: 570px;"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="position: static; color: #FF0000; font-family: Arial; font-size: 14px; top: 522px; left: 112px;" Text="Yaklaşan bir sözleşme bulunmamaktadır." Visible="False"></asp:Label>
        
        <asp:GridView ID="GridView1" runat="server" Height="146px" Style="position: static; left: 112px; top: 100px; left: -11px" Width="800px" AutoGenerateColumns="False" DataKeyNames="ContractId" BackColor="White" BorderColor="black" BorderStyle="solid" CellPadding="3" ForeColor="Black" GridLines="Both" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
            <AlternatingRowStyle />
            <Columns>
                <asp:BoundField DataField="ContractId" HeaderText="Sözleşme No." ReadOnly="True" SortExpression="ContractId" />
                <asp:BoundField DataField="Title" HeaderText="Sözleşme Adı" SortExpression="Title" />
                <asp:BoundField DataField="EffectiveDate" HeaderText="Başlama Süresi" SortExpression="EffectiveDate" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="ExpiryDate" HeaderText="Bitiş Süresi" SortExpression="ExpiryDate" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" OnClientClick="return confirm('Silemk istediğinizden emin misiniz?');"/>
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
        <asp:Label ID="Label2" runat="server" Text=" BUGÜN İÇİNDE SONLANACAK SÖZLEŞMELER" Style="position: static; left: 112px; font-size: medium; background-color: yellow; top: 800px; left: 112px;"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="z-index: 1; left: 210px; top: 872px; position: static; color: #FF0000; left: 112px; font-size: 14px; font-family: Arial;" Text="Bugün sonlanacak bir sözleşme bulunmamaktadır." Visible="False"></asp:Label>
        
        <asp:GridView ID="GridView2" runat="server" Style="position: static; top: -299px; left: 112px; width: 800px;" AutoGenerateColumns="False" DataKeyNames="ContractId" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Both" Height="16px" OnRowDeleting="GridView2_RowDeleting" OnSelectedIndexChanging="GridView2_SelectedIndexChanging">
            <AlternatingRowStyle />
            <Columns>
                <asp:BoundField DataField="ContractId" HeaderText="Sözleşme No." ReadOnly="True" SortExpression="ContractId" />
                <asp:BoundField DataField="Title" HeaderText="Sözleşme Adı" SortExpression="Title" />
                <asp:BoundField DataField="EffectiveDate" HeaderText="Başlama Süresi" SortExpression="EffectiveDate" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="ExpiryDate" HeaderText="Bitiş Süresi" SortExpression="ExpiryDate" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button runat="server" Text="Sil" CommandName="Delete" CausesValidation="False" ID="Button1" OnClientClick="return confirm('Silemk istediğinizden emin misiniz?');"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#121082" />
            <HeaderStyle BackColor="#121082" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#121082" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#121082" />
            <SortedAscendingHeaderStyle BackColor="#121082" />
            <SortedDescendingCellStyle BackColor="#121082" />
            <SortedDescendingHeaderStyle BackColor="#121082" />
        </asp:GridView>

    </div>





    <div class="col-md-4" aria-atomic="True">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
    </div>


</asp:Content>
