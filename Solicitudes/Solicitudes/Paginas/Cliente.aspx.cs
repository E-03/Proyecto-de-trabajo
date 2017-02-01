using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Solicitudes.Paginas
{
    public partial class Cliente : System.Web.UI.Page
    {
        Clase.CrudUsuario insertarUsuario = new Clase.CrudUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Aqui llamaremos el metodo para guardar el registro...
        protected void btnGuardarCliente_Click(object sender, EventArgs e)
        {
            if (txtNombreUsuario.Text == "")
            {
                MessageBox.Show("Debe insertar el nombre del usuario", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            else
                if (txtApellidoUsuario.Text == "")
                {
                    MessageBox.Show("Debe insertar el apellido del usuario", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
                else
                    if (txtOrganizacionUsuario.Text == "")
                    {
                        MessageBox.Show("Debe insertar la Organizacion a la que pertenece el usuario", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }
                    else
                    {
                        try
                        {
                            var msj = MessageBox.Show("Desea guardar el registro", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                            if (msj == DialogResult.Yes)
                            {
                                insertarUsuario.agregarUsuario(txtNombreUsuario.Text, txtApellidoUsuario.Text, txtTelefonoUsuario.Text, txtCorreoUsuario.Text,txtContraseña.Text, txtOrganizacionUsuario.Text);
                                //Aqui se vuelve a llenar el grid despues que se guarda el registro... Se actualiza.
                                //insertarUsuario.llenarGrid(GridUsuarios);
                                //MessageBox.Show("El Registro ha sido guardado Exitosamente", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                lblResultado.Text = "El registro ha sido guardado exitosamente!";
                                Response.Redirect("InicioSesion.aspx");

                            }
                            else
                            {
                            }
                        }
                        catch (Exception ex)
                        {
                            lblResultado.Text = ex.Message;
                        }
                    }
        }
    }
}