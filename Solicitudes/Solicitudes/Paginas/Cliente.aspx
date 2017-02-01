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
                      <li role="presentation" class="active"><a href="../DetalleSolicitud/index.aspx">Inicio Login</a></li>
                      <li role="presentation" class="active"><a href="Cliente.aspx">Cliente</a></li>
                      
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
                    <asp:TextBox runat="server" ID="txtNombreUsuario" CssClass="form-control" Width="400px" placeholder="Con este nombre se logueara..."></asp:TextBox><br />
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
                    <h1>&nbsp;</h1>
                </div>
           
            </div> 
        </div>
        </div>
    </form>
</body>
</html>
