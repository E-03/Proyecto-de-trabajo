using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Solicitudes.DetalleSolicitud
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAccederLogin_Click1(object sender, EventArgs e)
        {
            DetalleSolicitud.Clases.Login Loguearse = new Clases.Login();
            if (txtUsuario.Text == "admin" && txtContraseña.Text == "admi")
            {
                Response.Redirect("Administrador.aspx");
            }
            else { 
            var log = Loguearse.Loguear_Usuario(txtUsuario.Text, txtContraseña.Text);
            if (log == true)
            {
                Response.Redirect("principalUsuario.aspx");
            }
            else
            {
                lblResultadoLogin.Text = "Verifique la contraseña o usuario";
            }
            }
        }
    }
}