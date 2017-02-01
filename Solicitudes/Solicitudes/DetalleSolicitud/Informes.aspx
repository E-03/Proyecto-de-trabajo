<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informes.aspx.cs" Inherits="Solicitudes.DetalleSolicitud.Informes" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Estilos/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
         <header class="container">
            <p style="color:aqua;">
                <h1>Informes</h1>
                <h3>Ver Informes</h3>
            </p>
            <nav>
                 <ul class="nav nav-pills">
                      <li role="presentation" class="active"><a href="#">Home</a></li>
                      <li role="presentation" class="active"><a href="Cliente.aspx">Cliente</a></li>
                      <li role="presentation" class="active"><a href="#">Problemas</a></li>
                     <li role="presentation" class="active"><a href="AgregarSolicitud.aspx">Solicitud</a></li>
                     <li role="presentation" class="active"><a href="DSolicitud.aspx">Detalle solicitud</a></li>
                     <li role="presentation" class="active"><a href="#">Departamento</a></li>
                     <li role="presentation" class="active"><a href="Informes.aspx">Informes</a></li>
                 </ul>
             </nav>
             <hr />
        </header>
        
        <section class="container">
            <div>
                <h1>Tema 1</h1>
                <asp:DropDownList runat="server" ID="txtInformes" CssClass="btn btn-default" Height="50px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Abierta</asp:ListItem>
                    <asp:ListItem>Cerrada</asp:ListItem>
                    <asp:ListItem>Solicitudes Cerradas</asp:ListItem>
                    <asp:ListItem>Solicitudes de Software</asp:ListItem>
                    <asp:ListItem>Solicitudes de Soporte</asp:ListItem>
                </asp:DropDownList>                          
                <asp:Button ID="btnVerInforme" runat="server" Text="Ver Informe" Width="110px" CssClass="btn btn-default" OnClick="btnVerInforme_Click" />
                <asp:TextBox ID="txt" runat="server"></asp:TextBox>
            </div>
            <hr />
        </section>

    </div>
        <div class="container">    
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="469px" Width="904px">
                <LocalReport ReportPath="Reportes\Reporte.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSetSolicitudesAbiertas" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
               
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Solicitudes.dbSolicitudesWFDataSetTableAdapters.pro_Ver_Solicitudes_AbiertasTableAdapter">
                <SelectParameters>
                    <asp:Parameter Name="Estado_Solicitud" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
               
        </div>
    </form>
</body>
</html>
