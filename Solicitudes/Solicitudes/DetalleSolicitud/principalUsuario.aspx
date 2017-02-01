<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principalUsuario.aspx.cs" Inherits="Solicitudes.DetalleSolicitud.principalUsuario" %>

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
                <h1>Formulario Usuario</h1>
                <h3>Añadir nuevo usuario</h3>
            </p>
            <nav>
                 <ul class="nav nav-pills">
                      <li role="presentation" class="active"><a href="principalUsuario.aspx">Home</a></li>
                     <li role="presentation" class="active"><a href="AgregarSolicitud.aspx">Detalle Problema</a></li>   
                     <h3><a href="index.aspx">Cerrar sesion</a></h3>                
                 </ul>
             </nav>
        
        <hr />
        </header>

        <section class="container">
            <div class="row">               
                <div class="col-md-4"><h3>Datos de la solicitud enviada</h3></div>              
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_Detalle_Solicitud" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id_Detalle_Solicitud" HeaderText="Id_Detalle_Solicitud" InsertVisible="False" ReadOnly="True" SortExpression="Id_Detalle_Solicitud" />
                    <asp:BoundField DataField="Id_ClienteFk" HeaderText="Id_ClienteFk" SortExpression="Id_ClienteFk" />
                    <asp:BoundField DataField="Id_Problemafk" HeaderText="Id_Problemafk" SortExpression="Id_Problemafk" />
                    <asp:BoundField DataField="Descripcion_Solicitud" HeaderText="Descripcion_Solicitud" SortExpression="Descripcion_Solicitud" />
                    <asp:BoundField DataField="Estado_Solicitud" HeaderText="Estado_Solicitud" SortExpression="Estado_Solicitud" />
                    <asp:BoundField DataField="Prioridad_Solicitud" HeaderText="Prioridad_Solicitud" SortExpression="Prioridad_Solicitud" />
                    <asp:BoundField DataField="Fecha_solicitud" HeaderText="Fecha_solicitud" SortExpression="Fecha_solicitud" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

        </section>

    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSolicitudesWFConnectionString %>" SelectCommand="SELECT [Id_Detalle_Solicitud], [Id_ClienteFk], [Id_Problemafk], [Descripcion_Solicitud], [Estado_Solicitud], [Prioridad_Solicitud], [Fecha_solicitud] FROM [tblDetalleSolicitud]"></asp:SqlDataSource>
    </form>
</body>
</html>
