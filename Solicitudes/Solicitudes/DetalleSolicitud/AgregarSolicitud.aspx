<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSolicitud.aspx.cs" Inherits="Solicitudes.DetalleSolicitud.AgregarSolicitud" %>

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
                <h1>Agregar solicitud</h1>
                <h3>Inserte el detalle de su solicitud</h3>
                <h3><a href="index.aspx">Cerrar sesion</a></h3>               
            </p>
             <nav>
                 <ul class="nav nav-pills">
                      <li role="presentation" class="active"><a href="principalUsuario.aspx">Home</a></li>
                     <li role="presentation" class="active"><a href="AgregarSolicitud.aspx">Detalle solicitud</a></li>
                 </ul>
             </nav>
             <hr />
         </header>
        
        <div class="container"> 
         <div class="row">
            <div class="col-md-6">
                      
                <asp:Label ID="Label1" runat="server" Text="Id detalle solicitud"></asp:Label>
                    <asp:TextBox runat="server" ID="txtIddetalleSolicitud" CssClass="form-control" Width="400px" Enabled="False"></asp:TextBox><br />
                                        
                    <asp:Label ID="Label3" runat="server" Text="Prioridad"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtPrioridadDS" CssClass="form-control" Width="400px" required="required">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Alta</asp:ListItem>
                        <asp:ListItem>Media</asp:ListItem>
                        <asp:ListItem>Baja</asp:ListItem>
                    </asp:DropDownList><br />
                    
                    <asp:Label ID="Label4" runat="server" Text="Fecha Solicitud"></asp:Label>
                    <asp:TextBox runat="server" ID="txtFechaSolicitud" CssClass="form-control" Width="400px"></asp:TextBox><br />
                                       
                    <asp:Label ID="Label7" runat="server" Text="Cliente"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtClienteFk" CssClass="form-control" Width="400px" required="required" OnSelectedIndexChanged="txtClienteFk_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="lblFkCliente" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    <br />    
                    
                    <asp:Label ID="Label8" runat="server" Text="Problema"></asp:Label>
                    <asp:DropDownList runat="server" ID="txtProblemaFk" CssClass="form-control" Width="400px" required="required" OnSelectedIndexChanged="txtProblemaFk_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="lblFkProblema" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    <br />    
                       
                    <asp:Label ID="Label10" runat="server" Text="Descripcion"></asp:Label>
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" Width="400px" required="required"></asp:TextBox><br />

                    <asp:Button ID="btnGuardarDetalleSolicitud" runat="server" Text="Agregar detalle solicitud" CssClass="btn btn-primary" OnClick="btnGuardarDetalleSolicitud_Click"/>
                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" CssClass="btn btn-primary"/>
                    
                    <h2><asp:Label ID="Label9" runat="server" Text="Resultado"></asp:Label></h2>
                    <h3><asp:Label ID="lblSolicitudResultado" runat="server" Text="......."></asp:Label></h3>   
                 
                </div>
             <div class="col-md-6">
                 <h1>Subir archivo</h1>
                 <h3>Seleccione un archivo aqui...</h3>
                 <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn btn-default"/>
                 <br />
                 <asp:Label ID="Label2" runat="server" Text="Ruta Fisica en server"></asp:Label>
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox><br />
                 <asp:Label ID="Label5" runat="server" Text="Nombre de archivo"></asp:Label>
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox><br />
                 <asp:Label ID="Label6" runat="server" Text="Mensaje"></asp:Label>
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox><br />
                 <asp:Button ID="btnSubirArchivo" runat="server" Text="Subir archivo" CssClass="btn btn-default" OnClick="btnSubirArchivo_Click"/>
             </div>

    </div>
    </form>
</body>
</html>
