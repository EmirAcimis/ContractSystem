<%@ Page Title="Grafik" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
     CodeBehind="Chart.aspx.cs" 
    Inherits="Contract.Chart" %>


<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent"  runat="server" >


    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        #form1 {
            z-index: 1;
            left: 10px;
            top: 15px;
            position: relative;
            height: 415px;
            width: 928px;
        }
        .auto-style2 {
        z-index: 1;
        left: 754px;
        top: 183px;
        position: absolute;
        width: 395px;
        height: 256px;
    }
        </style>

    
    <div>
        
       <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SÖZLEŞMELERİN YILLARA GÖRE DAĞILIMI</h1><br />
        <br />
        <br />
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Chart ID="Chart1" runat="server" Height="304px" OnLoad="Chart1_Load" Width="313px">
            <series>
                <asp:Series IsXValueIndexed="True" Name="Series1"  XValueMember="Yıl" YValueMembers="Sözleşme Sayısı" ChartType="Line"  >
                </asp:Series >
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisY Title="Sözleşme Sayısı" TitleFont="Microsoft Sans Serif, 9.75pt">
                    </AxisY>
                    <AxisX Title="Yıl" TitleFont="Microsoft Sans Serif, 9.75pt">
                    </AxisX>
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <br />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            <asp:Chart ID="Chart2" runat="server" OnLoad="Chart2_Load" CssClass="auto-style2">
                <series>
                    <asp:Series ChartArea="ChartArea1" ChartType="Pie" Name="Series1">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </p>
   
    <p>
&nbsp;</p>

    </asp:Content>