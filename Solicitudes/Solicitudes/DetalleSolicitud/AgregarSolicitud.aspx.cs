using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Solicitudes.DetalleSolicitud
{
    public partial class AgregarSolicitud : System.Web.UI.Page
    {
        DetalleSolicitud.Clases.AgregarSolicitud nuevaSolicitud = new Clases.AgregarSolicitud();
        DetalleSolicitud.Clases.LlenarComboSolicitud llenarComboSolicitud = new Clases.LlenarComboSolicitud();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Aqui ponemos la fecha por default en el texboxt de fecha...
            txtFechaSolicitud.Text = DateTime.Now.ToString("yyyy/MM/dd");  
            //Aqui se llenan los combos de la solicitud...
            llenarComboSolicitud.LlenarComboUsuario(txtClienteFk);
            llenarComboSolicitud.LlenarComboProblema(txtProblemaFk);
        }

        /// <summary>
        /// Aqui guardamos los datos de la solicitud
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void btnGuardarDetalleSolicitud_Click(object sender, EventArgs e)
        {
            try
            {
                //int id = Convert.ToInt32(txtIddetalleSolicitud.Text.ToString());
                DateTime fecha = Convert.ToDateTime(txtFechaSolicitud.Text);                
                int Cliente = Convert.ToInt32(lblFkCliente.Text);
                int Problema = Convert.ToInt32(lblFkProblema.Text);

                var msj = MessageBox.Show("Desea Guardar el registro", "Pregunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (msj == DialogResult.Yes)
                {
                    nuevaSolicitud.agregarDetalleSolicitud(txtPrioridadDS.Text, fecha, txtDescripcion.Text, Cliente, Problema);
                    lblSolicitudResultado.Text = "El registro ha sido insertado correctamente!";
                    //ClientScript.RegisterStartupScript(this.GetType(),"alert",
                    //    "alert('Se ha agregado el registro')",true);
                    Response.Redirect("AgregarSolicitud.aspx");
                }
                else
                {

                }
            }
            catch (Exception ex)
            {
                lblSolicitudResultado.Text = "Error" + ex;
            } 
        }
        /// <summary>
        /// Aqui se le pasan los parametros para cuando se seleccione el cliente genere el id y guardarlo...
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void txtClienteFk_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarComboSolicitud.Mostrar_Id_Usuario(txtClienteFk.Text, lblFkCliente);
        }
        /// <summary>
        /// Aqui se le pasan los parametros para cuando se seleccione el problema genere el id y guardarlo...
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void txtProblemaFk_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarComboSolicitud.Mostrar_Id_Problema(txtProblemaFk.Text, lblFkProblema);
        }
    }
}