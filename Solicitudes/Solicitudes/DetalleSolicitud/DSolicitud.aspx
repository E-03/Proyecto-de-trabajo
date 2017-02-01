<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DSolicitud.aspx.cs" Inherits="Solicitudes.DetalleSolicitud.DSolicitud" %>

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
            <p>
                <h1>Formulario para actualizar el detalle de la solicitud</h1>
                <h3>Actualizar detalle solicitud</h3>
            </p>
             <nav>
                 <ul class="nav nav-pills">
                     <li role="presentation" class="active"><a href="Administrador.aspx">Administrador</a></li>                     
                     <li role="presentation" class="active"><a href="../Paginas/ObjetosProblemas.aspx">Objetos / Problemas</a></li>                    
                     <li role="presentation" class="active"><a href="DSolicitud.aspx">Detalle solicitud</a></li>
                     <li role="presentation" class="active"><a href="#">Departamento</a></li>
                     <li role="presentation" class="active"><a href="Informes.aspx">Informes</a></li>
                 </ul>
             </nav>
             <hr />
         </header>

        <div class="container"> 
         <div class="row">
            <div class="col-md-6">
                      
                <asp:Label ID="Label1" runat="server" Text="Id detalle solicitud"></asp:Label>
                    <asp:TextBox runat="server" ID="txtIddetalleSolicitud" CssClass="form-control" Width="400px" placeholder="Ingrese el id de la solicitud a buscar" OnTextChanged="txtIddetalleSolicitud_TextChanged" required="required"></asp:TextBox>
                <br />
                    
                    <asp:Label ID="Label2" runat="server" Text="Estado Solicitud"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtEstadoDetalleSolicitud" CssClass="form-control" Width="400px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Abierta</asp:ListItem>
                        <asp:ListItem>Cerrada</asp:ListItem>
                    </asp:DropDownList><br />
                    
                    <asp:Label ID="Label5" runat="server" Text="Estado Solicitud2"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtEstadoSolicitud2" CssClass="form-control" Width="400px">
                        <asp:ListItem></asp:ListItem>  
                        <asp:ListItem>Investigando</asp:ListItem>  
                        <asp:ListItem>Resuelto</asp:ListItem>      
                    </asp:DropDownList><br />
                    
                    <asp:Label ID="Label3" runat="server" Text="Prioridad"></asp:Label>
                    <asp:TextBox ID="txtPrioridad" runat="server" CssClass="form-control" Width="400px" Enabled="False" required="required"></asp:TextBox><br />
                    
                        
                    <asp:Label ID="Label4" runat="server" Text="Fecha Solicitud"></asp:Label>
                    <asp:TextBox runat="server" ID="txtFechaSolicitud" CssClass="form-control" Width="400px" Enabled="False"></asp:TextBox><br />
                    
                    <asp:Label ID="Label6" runat="server" Text="Departamento"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtDepartamentofk" CssClass="form-control" Width="400px" OnSelectedIndexChanged="txtDepartamentofk_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="lblFkDepartamento" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    <br />
                    
                    <asp:Label ID="Label7" runat="server" Text="Cliente"></asp:Label>
                    <asp:TextBox runat="server" ID="txtClienteFk" CssClass="form-control" Width="400px" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="lblFkCliente" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    <br />    
                    
                    <asp:Label ID="Label8" runat="server" Text="Problema"></asp:Label>
                    <asp:TextBox runat="server" ID="txtProblemaFk" CssClass="form-control" Width="400px" Enabled="False"></asp:TextBox>
                                           
                    <asp:TextBox ID="lblFkProblema" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    <br />    
                       
                    <asp:Label ID="Label10" runat="server" Text="Descripcion"></asp:Label>
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" Width="400px" Enabled="False"></asp:TextBox><br />

                    <asp:Button ID="btnGuardarDetalleSolicitud" runat="server" Text="Completar solicitud" CssClass="btn btn-primary" OnClick="btnGuardarDetalleSolicitud_Click"/>
                    <asp:Button ID="btnNuevo" runat="server" Text="Buscar solicitud" CssClass="btn btn-primary" OnClick="btnNuevo_Click"/>
                    
                    <h2><asp:Label ID="Label9" runat="server" Text="Resultado"></asp:Label></h2>
                    <h3><asp:Label ID="lblResultadoSolicitud" runat="server" Text="......."></asp:Label></h3>   
                 
                </div>
             <div class="col-md-6">
                 <h1>Ver archivo adjunto</h1>
                 <h3>Seleccione un archivo aqui...</h3>
                 <asp:FileUpload ID="FileUpload1" runat="server" />
             </div>
    </div>
        </div>
        <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_Detalle_Solicitud" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id_Detalle_Solicitud" HeaderText="Id_Detalle_Solicitud" InsertVisible="False" ReadOnly="True" SortExpression="Id_Detalle_Solicitud" />
                <asp:BoundField DataField="Estado_Solicitud" HeaderText="Estado_Solicitud" SortExpression="Estado_Solicitud" />
                <asp:BoundField DataField="Accion" HeaderText="Accion" SortExpression="Accion" />
                <asp:BoundField DataField="Prioridad_Solicitud" HeaderText="Prioridad_Solicitud" SortExpression="Prioridad_Solicitud" />
                <asp:BoundField DataField="Fecha_solicitud" HeaderText="Fecha_solicitud" SortExpression="Fecha_solicitud" />
                <asp:BoundField DataField="Descripcion_Solicitud" HeaderText="Descripcion_Solicitud" SortExpression="Descripcion_Solicitud" />
                <asp:BoundField DataField="Departamento_SolicitanteFK" HeaderText="Departamento_SolicitanteFK" SortExpression="Departamento_SolicitanteFK" />
                <asp:BoundField DataField="Id_ClienteFk" HeaderText="Id_ClienteFk" SortExpression="Id_ClienteFk" />
                <asp:BoundField DataField="Id_Problemafk" HeaderText="Id_Problemafk" SortExpression="Id_Problemafk" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSolicitudesWFConnectionString %>" DeleteCommand="DELETE FROM [tblDetalleSolicitud] WHERE [Id_Detalle_Solicitud] = @Id_Detalle_Solicitud" InsertCommand="INSERT INTO [tblDetalleSolicitud] ([Estado_Solicitud], [Accion], [Prioridad_Solicitud], [Fecha_solicitud], [Descripcion_Solicitud], [Departamento_SolicitanteFK], [Id_ClienteFk], [Id_Problemafk]) VALUES (@Estado_Solicitud, @Accion, @Prioridad_Solicitud, @Fecha_solicitud, @Descripcion_Solicitud, @Departamento_SolicitanteFK, @Id_ClienteFk, @Id_Problemafk)" SelectCommand="SELECT * FROM [tblDetalleSolicitud]" UpdateCommand="UPDATE [tblDetalleSolicitud] SET [Estado_Solicitud] = @Estado_Solicitud, [Accion] = @Accion, [Prioridad_Solicitud] = @Prioridad_Solicitud, [Fecha_solicitud] = @Fecha_solicitud, [Descripcion_Solicitud] = @Descripcion_Solicitud, [Departamento_SolicitanteFK] = @Departamento_SolicitanteFK, [Id_ClienteFk] = @Id_ClienteFk, [Id_Problemafk] = @Id_Problemafk WHERE [Id_Detalle_Solicitud] = @Id_Detalle_Solicitud">
            <DeleteParameters>
                <asp:Parameter Name="Id_Detalle_Solicitud" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Estado_Solicitud" Type="String" />
                <asp:Parameter Name="Accion" Type="String" />
                <asp:Parameter Name="Prioridad_Solicitud" Type="String" />
                <asp:Parameter Name="Fecha_solicitud" Type="DateTime" />
                <asp:Parameter Name="Descripcion_Solicitud" Type="String" />
                <asp:Parameter Name="Departamento_SolicitanteFK" Type="Int32" />
                <asp:Parameter Name="Id_ClienteFk" Type="Int32" />
                <asp:Parameter Name="Id_Problemafk" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Estado_Solicitud" Type="String" />
                <asp:Parameter Name="Accion" Type="String" />
                <asp:Parameter Name="Prioridad_Solicitud" Type="String" />
                <asp:Parameter Name="Fecha_solicitud" Type="DateTime" />
                <asp:Parameter Name="Descripcion_Solicitud" Type="String" />
                <asp:Parameter Name="Departamento_SolicitanteFK" Type="Int32" />
                <asp:Parameter Name="Id_ClienteFk" Type="Int32" />
                <asp:Parameter Name="Id_Problemafk" Type="Int32" />
                <asp:Parameter Name="Id_Detalle_Solicitud" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
    </form>
</body>
</html>
