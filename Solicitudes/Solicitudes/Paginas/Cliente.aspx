<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="Solicitudes.Paginas.Cliente" %>

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
                      <li role="presentation" class="active"><a href="#">Home</a></li>
                      <li role="presentation" class="active"><a href="Cliente.aspx">Cliente</a></li>
                      <li role="presentation" class="active"><a href="#">Problemas</a></li>
                     <li role="presentation" class="active"><a href="AgregarSolicitud.aspx">Solicitud</a></li>
                     <li role="presentation" class="active"><a href="DSolicitud.aspx">Detalle solicitud</a></li>
                     <li role="presentation" class="active"><a href="#">Departamento</a></li>
                     <li role="presentation" class="active"><a href="Informes.aspx">Informes</a></li>
                 </ul>
             </nav>
        </header>
        <hr class="container" />
        
        <div class="container"> 
        <div class="row">
            <div class="col-md-6">
                    <asp:Label ID="Label7" runat="server" Text="Id del usuario"></asp:Label>
                    <asp:TextBox runat="server" ID="txtIdUsuario" CssClass="form-control" Width="400px" Enabled="False"></asp:TextBox><br />  
                    <asp:Label ID="Label1" runat="server" Text="Nombre del usuario*" required ="required"></asp:Label>
                    <asp:TextBox runat="server" ID="txtNombreUsuario" CssClass="form-control" Width="400px"></asp:TextBox><br />
                    <asp:Label ID="Label2" runat="server" Text="Apellido del usuario*"></asp:Label>
                    <asp:TextBox runat="server" ID="txtApellidoUsuario" CssClass="form-control" Width="400px" required ="required"></asp:TextBox><br />
                    <asp:Label ID="Label3" runat="server" Text="Telefono"></asp:Label>
                    <asp:TextBox runat="server" ID="txtTelefonoUsuario" CssClass="form-control" Width="400px"></asp:TextBox><br />
                    <asp:Label ID="Label4" runat="server" Text="Correo electronico"></asp:Label>
                    <asp:TextBox runat="server" ID="txtCorreoUsuario" CssClass="form-control" Width="400px"></asp:TextBox><br />
                    
                    <asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>
                    <asp:TextBox ID="txtContraseña" runat="server" CssClass="form-control" Width="400px" required ="required"></asp:TextBox><br />

                    <asp:Label ID="Label5" runat="server" Text="Organizacion*"></asp:Label>
                    <asp:TextBox runat="server" ID="txtOrganizacionUsuario" CssClass="form-control"  Width="400px" required ="required"></asp:TextBox><br />
                    
                   <%-- <asp:Button runat="server" ID="btnGuardar" Text="Guardar Empleado" CssClass="btn btn-default" OnClick="btnGuardar_Click" />   --%>                
                    <asp:Button ID="btnGuardarCliente" runat="server" Text="Guardar Cliente" CssClass="btn btn-primary" OnClick="btnGuardarCliente_Click" />
                    <input type="reset" name="btnNuevo" value="Nuevo Cliente" class="btn btn-primary"/>
                    <h2>
                        <asp:Label ID="lblre" runat="server" Text="Resultado:"></asp:Label>
                    </h2>
                    <h3>
                        <asp:Label ID="lblResultado" runat="server" Text="........"></asp:Label>
                    </h3>
                </div>
            
                <div class="col-md-5">
                    <h1>Listado Usuarios</h1>
                    <asp:DataGrid runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowCustomPaging="True" Width="554px">
                        <AlternatingItemStyle BackColor="White" />
                        <EditItemStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataGrid>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSolicitudesWFConnectionString %>" DeleteCommand="DELETE FROM [tblUsuario] WHERE [Id_Usuario] = @original_Id_Usuario" InsertCommand="INSERT INTO [tblUsuario] ([Nombre_Usuario], [Apellido_Usuario], [Telefono], [CorreoElectronico], [Contraseña], [Organizacion]) VALUES (@Nombre_Usuario, @Apellido_Usuario, @Telefono, @CorreoElectronico, @Contraseña, @Organizacion)" SelectCommand="SELECT * FROM [tblUsuario]" UpdateCommand="UPDATE [tblUsuario] SET [Nombre_Usuario] = @Nombre_Usuario, [Apellido_Usuario] = @Apellido_Usuario, [Telefono] = @Telefono, [CorreoElectronico] = @CorreoElectronico, [Contraseña] = @Contraseña, [Organizacion] = @Organizacion WHERE [Id_Usuario] = @original_Id_Usuario" OldValuesParameterFormatString="original_{0}">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id_Usuario" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombre_Usuario" Type="String" />
                            <asp:Parameter Name="Apellido_Usuario" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="CorreoElectronico" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Organizacion" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombre_Usuario" Type="String" />
                            <asp:Parameter Name="Apellido_Usuario" Type="String" />
                            <asp:Parameter Name="Telefono" Type="String" />
                            <asp:Parameter Name="CorreoElectronico" Type="String" />
                            <asp:Parameter Name="Contraseña" Type="String" />
                            <asp:Parameter Name="Organizacion" Type="String" />
                            <asp:Parameter Name="original_Id_Usuario" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
           
            </div> 
        </div>
        </div>
    </form>
</body>
</html>
