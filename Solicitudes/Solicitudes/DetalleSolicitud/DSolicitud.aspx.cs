using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Solicitudes.DetalleSolicitud
{
    public partial class DSolicitud : System.Web.UI.Page
    {
        DetalleSolicitud.Clases.AgregarSolicitud nuevaSolicitud = new Clases.AgregarSolicitud();
        DetalleSolicitud.Clases.LlenarComboSolicitud llenarComboSolicitud = new Clases.LlenarComboSolicitud();
        protected void Page_Load(object sender, EventArgs e)
        {           
            //Aqui se llenan los combos de la solicitud...
            //llenarComboSolicitud.LlenarComboUsuario(txtClienteFk);
            //llenarComboSolicitud.LlenarComboProblema(txtProblemaFk);
            //Aqui se llena en combo del departamento en la solicitud que se asignara(Update)...
            llenarComboSolicitud.LlenarComboDepartamento(txtDepartamentofk);
        }

        /// <summary>
        /// Aqui se actualizan los datos del solicitante... aqui se cierra la solicitud...
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnGuardarDetalleSolicitud_Click(object sender, EventArgs e)
        {
            
            try
            {
                int id = Convert.ToInt32(txtIddetalleSolicitud.Text);
                int Departamento = Convert.ToInt32(lblFkDepartamento.Text);

                var msj = MessageBox.Show("Desea guardar el registro?","Pregunta",MessageBoxButtons.YesNo,MessageBoxIcon.Question);
                if (msj == DialogResult.Yes)
                {
                    DetalleSolicitud.Clases.ActualizarSolicitud actualizarSolicitudRecibida = new Clases.ActualizarSolicitud();
                    actualizarSolicitudRecibida.actualizarDetalleSolicitud(id, txtEstadoDetalleSolicitud.Text, txtEstadoSolicitud2.Text, Departamento);
                    ClientScript.RegisterStartupScript(this.GetType(), "alert",
                        "alert('El registro ha sido asignado o actualizado')", true);
                    txtIddetalleSolicitud.Text = string.Empty;
                    txtEstadoDetalleSolicitud.Text = string.Empty;
                    txtEstadoSolicitud2.Text = string.Empty;
                    txtPrioridad.Text = string.Empty;
                    txtFechaSolicitud.Text = string.Empty;
                    txtDepartamentofk.Text = string.Empty;
                    txtClienteFk.Text = string.Empty;
                    txtProblemaFk.Text = string.Empty;
                    txtDescripcion.Text = string.Empty;
                    //Response.Redirect("DSolicitud.aspx");
                    lblResultadoSolicitud.Text = "El registro ha sido asignado o actualizado";
                }
                else
                {

                }
                
            }
            catch (Exception ex)
            {

                lblResultadoSolicitud.Text = ex.Message;
            }
            
        }
        /// <summary>
        /// Aqui se recupera el id...
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void txtClienteFk_SelectedIndexChanged(object sender, EventArgs e)
        {
            //llenarComboSolicitud.Mostrar_Id_Usuario(txtClienteFk.Text, lblFkCliente);
        }

        /// <summary>
        /// Aqui se le pasan los parametros para cuando se seleccione el problema genere el id y guardarlo...
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void txtProblemaFk_SelectedIndexChanged(object sender, EventArgs e)
        {
            //llenarComboSolicitud.Mostrar_Id_Problema(txtProblemaFk.Text, lblFkProblema);
        }
        /// <summary>
        /// Aqui se le pasan los parametros para cuando se seleccione el Departamento genere el id y guardarlo....
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void txtDepartamentofk_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarComboSolicitud.Mostrar_Id_Departamento(txtDepartamentofk.Text, lblFkDepartamento);
        }

        protected void txtIddetalleSolicitud_TextChanged(object sender, EventArgs e)
        {
            //DetalleSolicitud.Clases.VerSolicitud nuevaSolicitud = new Clases.VerSolicitud();
            //int id = Convert.ToInt32(txtIddetalleSolicitud.Text);
            //nuevaSolicitud.Mostrar_Informacion_Del_Cliente(id, txtEstadoDetalleSolicitud, txtEstadoSolicitud2, txtPrioridadDS, txtFechaSolicitud,txtDescripcion,txtDepartamentofk,txtClienteFk,txtProblemaFk);
            ////nuevaSolicitud.Mostrar_Informacion_Del_Cliente(id, txtEstadoDetalleSolicitud, txtEstadoSolicitud2, txtPrioridadDS,fecha, txtDescripcion, txtDepartamentofk.Text, txtClienteFk.Text, txtProblemaFk.Text);
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            DetalleSolicitud.Clases.VerSolicitud nuevaSolicitud = new Clases.VerSolicitud();            
            int num = 0;
            if (!string.IsNullOrEmpty(txtIddetalleSolicitud.Text))
            {
                if (!int.TryParse(txtIddetalleSolicitud.Text, out num))
                {
                    lblResultadoSolicitud.Text= "El Id debe ser un valor numerico";
                    return;
                }
                else
                {
                    int id = Convert.ToInt32(txtIddetalleSolicitud.Text);
                    //nuevaSolicitud.Mostrar_Informacion_Del_Cliente(id, txtPrioridad, txtFechaSolicitud, txtDescripcion, txtClienteFk, txtProblemaFk, lblResultadoSolicitud);
                    nuevaSolicitud.Mostrar_Informacion_Del_Cliente(id, txtPrioridad, txtFechaSolicitud, txtClienteFk, txtProblemaFk, txtDescripcion, lblResultadoSolicitud);
                }
            }
        }
    }
}