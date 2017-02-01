<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjetosProblemas.aspx.cs" Inherits="Solicitudes.Paginas.ObjetosProblemas" %>

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
                <h1>Formulario Objetos / Problemas</h1>
                <h3>Añadir nuevo Objeto</h3>
            </p>
            <nav>
                 <ul class="nav nav-pills">
                     <li role="presentation" class="active"><a href="../DetalleSolicitud/Administrador.aspx">Administrador</a></li>                     
                     <li role="presentation" class="active"><a href="../Paginas/ObjetosProblemas.aspx">Objetos / Problemas</a></li>                    
                     <li role="presentation" class="active"><a href="../DetalleSolicitud/DSolicitud.aspx">Detalle Solicitud</a></li>
                     <li role="presentation" class="active"><a href="#">Departamento</a></li>
                     <li role="presentation" class="active"><a href="Informes.aspx">Informes</a></li>
                 </ul>
             </nav>
        </header>
        <hr class="container" />
        
        <div class="container"> 
        <div class="row">
            <div class="col-md-6">
                    <asp:Label ID="Label7" runat="server" Text="Id del Problema"></asp:Label>
                    <asp:TextBox runat="server" ID="txtIdProblema" CssClass="form-control" Width="400px" Enabled="False"></asp:TextBox><br />  
                    <asp:Label ID="Label1" runat="server" Text="Titulo del Problema*"></asp:Label>
                    <asp:TextBox runat="server" ID="txtTituloProblema" CssClass="form-control" Width="400px" required ="required"></asp:TextBox><br />
                    <asp:Label ID="Label2" runat="server" Text="Descripcion del problema*"></asp:Label>
                    <asp:TextBox runat="server" ID="txtDescripcionProblema" CssClass="form-control" Width="400px" required ="required"></asp:TextBox><br />             
                    <asp:Button ID="btnGuardarProblema" runat="server" Text="Guardar Problema" CssClass="btn btn-primary" OnClick="btnGuardarProblema_Click"/>
                    <input type="reset" name="btnNuevoObjeto" value="Nuevo Objeto" class="btn btn-primary"/>
                    <h2>
                        <asp:Label ID="lblre" runat="server" Text="Resultado:"></asp:Label>
                    </h2>
                    <h3>
                        <asp:Label ID="lblResultadoProblemas" runat="server" Text="........"></asp:Label>
                    </h3>
                </div>
            
                <div class="col-md-5">
                    <h1>Listado Problemas</h1>
                    <asp:DataGrid runat="server" ID="GridProblema"></asp:DataGrid>                  
                </div>
           
            </div> 
        </div>
        </div>
    </form>
</body>
</html>
