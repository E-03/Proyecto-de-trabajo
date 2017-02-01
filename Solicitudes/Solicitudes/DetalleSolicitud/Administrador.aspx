<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="Solicitudes.DetalleSolicitud.Administrador" %>

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
                <h1>Administrador</h1>
                <h3>Configuraciones de administrador</h3>
            </p>
             <nav>
                 <ul class="nav nav-pills">
                     <li role="presentation" class="active"><a href="Administrador.aspx">Administrador</a></li>
                     <li role="presentation" class="active"><a href="../Paginas/ObjetosProblemas.aspx">Objetos / Problemas</a></li>                    
                     <li role="presentation" class="active"><a href="DSolicitud.aspx">Detalle solicitud</a></li>                  
                     <li role="presentation" class="active"><a href="Informes.aspx">Informes</a></li>
                 </ul>
             </nav>
             <hr />
         </header>

        <section class="container">
            <div class="row">
                <div class="col-lg-3">Solicitud1
                    <div class="panel-primary">
                        
                    </div>
                </div>
                <div class="col-lg-3">Solicitud2</div>
                <div class="col-lg-3">Solicitud3</div>
                <div class="col-lg-3">Solicitud4</div>
            </div>
        </section>
        
    </div>
    </form>
</body>
</html>
