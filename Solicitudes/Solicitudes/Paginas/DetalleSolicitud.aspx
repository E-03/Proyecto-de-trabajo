<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalleSolicitud.aspx.cs" Inherits="Solicitudes.Paginas.DetalleSolicitud" %>

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
                <h1>Formulario detalle solicitud</h1>
                <h3>Añadir nuevo detalle solicitud</h3>
            </p>
             <nav>
                 <ul class="nav nav-pills">
                      <li role="presentation" class="active"><a href="index.aspx">Home</a></li>
                      <li role="presentation" class="active"><a href="Cliente.aspx">Usuario</a></li>
                      <li role="presentation" class="active"><a href="ObjetosProblemas.aspx">Problemas</a></li>
                     <li role="presentation" class="active"><a href="solicitud.aspx">Solicitud</a></li>
                     <li role="presentation" class="active"><a href="DetalleSolicitud.aspx">Detalle solicitud</a></li>
                     <li role="presentation" class="active"><a href="#">Departamento</a></li>
                 </ul>
             </nav>
             <hr />
         </header>

        <div class="container"> 
         <div class="row">
            <div class="col-md-6">
                      
                    <asp:Label ID="Label1" runat="server" Text="Id detalle solicitud"></asp:Label>
                    <asp:TextBox runat="server" ID="txtIddetalleSolicitud" CssClass="form-control" Width="400px" Enabled="False"></asp:TextBox><br />
                    
                    <asp:Label ID="Label2" runat="server" Text="Estado Solicitud"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtEstadoDetalleSolicitud" CssClass="form-control" Width="400px">
                        <asp:ListItem>---</asp:ListItem>
                        <asp:ListItem>Abierta</asp:ListItem>
                        <asp:ListItem>Cerrada</asp:ListItem>
                    </asp:DropDownList><br />
                    
                    <asp:Label ID="Label5" runat="server" Text="Estado Solicitud2"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtEstadoSolicitud2" CssClass="form-control" Width="400px">
                        <asp:ListItem>Investigando</asp:ListItem>       
                    </asp:DropDownList><br />
                    
                    <asp:Label ID="Label3" runat="server" Text="Prioridad"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtPrioridadDS" CssClass="form-control" Width="400px">
                        <asp:ListItem>---</asp:ListItem>
                        <asp:ListItem>Alta</asp:ListItem>
                        <asp:ListItem>Media</asp:ListItem>
                        <asp:ListItem>Baja</asp:ListItem>
                    </asp:DropDownList><br />
                    
                    <asp:Label ID="Label4" runat="server" Text="Fecha Solicitud"></asp:Label>
                    <asp:TextBox runat="server" ID="txtFechaSolicitud" CssClass="form-control" Width="400px"></asp:TextBox><br />
                    
                    <asp:Label ID="Label6" runat="server" Text="Departamento"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtDepartamentofk" CssClass="form-control" Width="400px" OnSelectedIndexChanged="txtDepartamentofk_SelectedIndexChanged"></asp:DropDownList>
                    <asp:TextBox ID="lblFkDepartamento" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    <br />
                    
                    <asp:Label ID="Label7" runat="server" Text="Cliente"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtClienteFk" CssClass="form-control" Width="400px" OnSelectedIndexChanged="txtClienteFk_SelectedIndexChanged">
                        <asp:ListItem>---</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="lblFkCliente" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    <br />    
                    
                    <asp:Label ID="Label8" runat="server" Text="Problema"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtProblemaFk" CssClass="form-control" Width="400px" OnSelectedIndexChanged="txtProblemaFk_SelectedIndexChanged">
                        <asp:ListItem>---</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="lblFkProblema" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    <br />    
                       
                    <asp:Label ID="Label10" runat="server" Text="Descripcion"></asp:Label>
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" Width="400px"></asp:TextBox><br />

                    <asp:Button ID="btnGuardarDetalleSolicitud" runat="server" Text="Guardar detalle solicitud" CssClass="btn btn-primary" OnClick="btnGuardarDetalleSolicitud_Click" />
                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" CssClass="btn btn-primary"/>
                    
                    <h2><asp:Label ID="Label9" runat="server" Text="Resultado"></asp:Label></h2>
                    <h3><asp:Label ID="lblResultadoSolicitud" runat="server" Text="......."></asp:Label></h3>

                </div>
             <div class="col-md-6">
                 <h1>Subir archivo</h1>
                 <h3>Seleccione un archivo aqui...</h3>
                 <asp:FileUpload ID="FileUpload1" runat="server" />
             </div>
                </div>
                                                 
                                      
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
                                      
                
            </div>
         </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbSolicitudesWFConnectionString %>" DeleteCommand="DELETE FROM [tblDetalleSolicitud] WHERE [Id_Detalle_Solicitud] = @original_Id_Detalle_Solicitud AND (([Estado_Solicitud] = @original_Estado_Solicitud) OR ([Estado_Solicitud] IS NULL AND @original_Estado_Solicitud IS NULL)) AND (([Accion] = @original_Accion) OR ([Accion] IS NULL AND @original_Accion IS NULL)) AND (([Prioridad_Solicitud] = @original_Prioridad_Solicitud) OR ([Prioridad_Solicitud] IS NULL AND @original_Prioridad_Solicitud IS NULL)) AND [Fecha_solicitud] = @original_Fecha_solicitud AND (([Descripcion_Solicitud] = @original_Descripcion_Solicitud) OR ([Descripcion_Solicitud] IS NULL AND @original_Descripcion_Solicitud IS NULL)) AND [Departamento_SolicitanteFK] = @original_Departamento_SolicitanteFK AND [Id_ClienteFk] = @original_Id_ClienteFk AND [Id_Problemafk] = @original_Id_Problemafk" InsertCommand="INSERT INTO [tblDetalleSolicitud] ([Estado_Solicitud], [Accion], [Prioridad_Solicitud], [Fecha_solicitud], [Descripcion_Solicitud], [Departamento_SolicitanteFK], [Id_ClienteFk], [Id_Problemafk]) VALUES (@Estado_Solicitud, @Accion, @Prioridad_Solicitud, @Fecha_solicitud, @Descripcion_Solicitud, @Departamento_SolicitanteFK, @Id_ClienteFk, @Id_Problemafk)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblDetalleSolicitud]" UpdateCommand="UPDATE [tblDetalleSolicitud] SET [Estado_Solicitud] = @Estado_Solicitud, [Accion] = @Accion, [Prioridad_Solicitud] = @Prioridad_Solicitud, [Fecha_solicitud] = @Fecha_solicitud, [Descripcion_Solicitud] = @Descripcion_Solicitud, [Departamento_SolicitanteFK] = @Departamento_SolicitanteFK, [Id_ClienteFk] = @Id_ClienteFk, [Id_Problemafk] = @Id_Problemafk WHERE [Id_Detalle_Solicitud] = @original_Id_Detalle_Solicitud AND (([Estado_Solicitud] = @original_Estado_Solicitud) OR ([Estado_Solicitud] IS NULL AND @original_Estado_Solicitud IS NULL)) AND (([Accion] = @original_Accion) OR ([Accion] IS NULL AND @original_Accion IS NULL)) AND (([Prioridad_Solicitud] = @original_Prioridad_Solicitud) OR ([Prioridad_Solicitud] IS NULL AND @original_Prioridad_Solicitud IS NULL)) AND [Fecha_solicitud] = @original_Fecha_solicitud AND (([Descripcion_Solicitud] = @original_Descripcion_Solicitud) OR ([Descripcion_Solicitud] IS NULL AND @original_Descripcion_Solicitud IS NULL)) AND [Departamento_SolicitanteFK] = @original_Departamento_SolicitanteFK AND [Id_ClienteFk] = @original_Id_ClienteFk AND [Id_Problemafk] = @original_Id_Problemafk">
            <DeleteParameters>
                <asp:Parameter Name="original_Id_Detalle_Solicitud" Type="Int32" />
                <asp:Parameter Name="original_Estado_Solicitud" Type="String" />
                <asp:Parameter Name="original_Accion" Type="String" />
                <asp:Parameter Name="original_Prioridad_Solicitud" Type="String" />
                <asp:Parameter Name="original_Fecha_solicitud" Type="DateTime" />
                <asp:Parameter Name="original_Descripcion_Solicitud" Type="String" />
                <asp:Parameter Name="original_Departamento_SolicitanteFK" Type="Int32" />
                <asp:Parameter Name="original_Id_ClienteFk" Type="Int32" />
                <asp:Parameter Name="original_Id_Problemafk" Type="Int32" />
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
                <asp:Parameter Name="original_Id_Detalle_Solicitud" Type="Int32" />
                <asp:Parameter Name="original_Estado_Solicitud" Type="String" />
                <asp:Parameter Name="original_Accion" Type="String" />
                <asp:Parameter Name="original_Prioridad_Solicitud" Type="String" />
                <asp:Parameter Name="original_Fecha_solicitud" Type="DateTime" />
                <asp:Parameter Name="original_Descripcion_Solicitud" Type="String" />
                <asp:Parameter Name="original_Departamento_SolicitanteFK" Type="Int32" />
                <asp:Parameter Name="original_Id_ClienteFk" Type="Int32" />
                <asp:Parameter Name="original_Id_Problemafk" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </form>
</body>
</html>
