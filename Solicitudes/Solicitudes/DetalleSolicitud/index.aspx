<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Solicitudes.DetalleSolicitud.InicioSesion" %>

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
            <p style="text-align:center">
                <h1>Usuario</h1>
                <h3>Inserte su usuario y contraseña</h3>
            </p>
            
             <hr />
         </header>

        <div class="container">          
                <p>
                    <center>
                    <h1>Login (Acceder)</h1>
                    <asp:Label runat="server" Text="Usuario"></asp:Label>
                    <asp:TextBox runat="server" ID="txtUsuario" CssClass="form-control" required="required" Width="300px"></asp:TextBox><br />
                    <asp:Label runat="server" Text="Contraseña"></asp:Label>                   
                    <asp:TextBox ID="txtContraseña" runat="server" class="form-control" required="required" Width="300px" TextMode="Password"></asp:TextBox><br />
                    <asp:button text="Acceder" runat="server" ID="btnAccederLogin" CssClass="btn btn-primary" OnClick="btnAccederLogin_Click1"/>
                    <h3><asp:Label ID="lblResultadoLogin" runat="server" Text="......."></asp:Label></h3>
                    <a href="../Paginas/Cliente.aspx">Agregar nuevo usuario</a>
                    </center>
                </p>
            
        </div>

    </div>
    </form>
</body>
</html>
