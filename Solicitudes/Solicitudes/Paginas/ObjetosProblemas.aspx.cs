using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Solicitudes.Paginas
{
    public partial class ObjetosProblemas : System.Web.UI.Page
    {
        Clase.CrudObjetosProblemas agregarObjeto = new Clase.CrudObjetosProblemas();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Aqui procedemos a llamar el metodo para guardar el registro...
        protected void btnGuardarProblema_Click(object sender, EventArgs e)
        {
            if (txtTituloProblema.Text == "")
            {
                MessageBox.Show("Debe insertar el titulo del problema", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                try
                {
                    var msj = MessageBox.Show("Desea guardar el registro", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (msj == DialogResult.Yes)
                    {
                        agregarObjeto.agregarObtetoProblema(txtDescripcionProblema.Text, txtDescripcionProblema.Text);
                        //Aqui se vuelve a llenar el grid despues que se guarda el registro... Se actualiza.
                        //insertarProblema.llenarGridProblema(GridProblema);
                        //MessageBox.Show("El Registro ha sido guardado Exitosamente", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        lblResultadoProblemas.Text = "El registro se inserto correctamente!";
                        txtTituloProblema.Text = "";
                        txtDescripcionProblema.Text = "";
                    }
                    else
                    {

                    }
                }

                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Advertencia");
                }

            }
        }
    }
    
}