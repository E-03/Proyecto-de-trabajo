<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="solicitud.aspx.cs" Inherits="Solicitudes.Paginas.solicitud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Estilos/css/bootstrap.min.css" rel="stylesheet" />
    <title>Solicitudes</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <header class="container">
            <p>
                <h1>Formulario Solicitud</h1>
                <h3>Añadir nueva solicitud</h3>
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

        <div class="container"> 
         <div class="row">
            <div class="col-md-6">
                      
                    <asp:Label ID="Label1" runat="server" Text="Id solicitud"></asp:Label>
                    <asp:TextBox runat="server" ID="txtIdSolicitud" CssClass="form-control" Width="400px"></asp:TextBox><br />
                    <asp:Label ID="Label2" runat="server" Text="Titulo Solicitud"></asp:Label>
                    <asp:TextBox runat="server" ID="txtTituloSolicitud" CssClass="form-control" Width="400px"></asp:TextBox><br />
                    <asp:Label ID="Label5" runat="server" Text="Objeto / Problema"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtObjetoProblema" CssClass="form-control" Width="400px" DataSourceID="SqlDataSourceObjeto" DataTextField="Titulo_Problema" DataValueField="Titulo_Problema"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceObjeto" runat="server" ConnectionString="<%$ ConnectionStrings:dbSolicitudesWFConnectionString %>" SelectCommand="SELECT [Titulo_Problema] FROM [tblProblemas]"></asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Descripcion"></asp:Label>
                    <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control" Width="400px"></asp:TextBox><br />
                    <asp:Label ID="Label4" runat="server" Text="Usuario"></asp:Label>
                    <asp:TextBox runat="server" ID="txtUsuarioFk" CssClass="form-control" Width="400px"></asp:TextBox><br />
                        
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar solicitud" CssClass="btn btn-primary" />
                </div>
                </div>
            </div>
         </div>
    </form>
</body>
</html>
