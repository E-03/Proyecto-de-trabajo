using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Solicitudes.Paginas
{
    public partial class DetalleSolicitud : System.Web.UI.Page
    {
        Clase.CrudDetalleSolicitud agregarDetalleSolicitud = new Clase.CrudDetalleSolicitud();
        Clase.LlenarComboDetalleSolicitud llenar_combo_Detalle_Solicitud_Departamento = new Clase.LlenarComboDetalleSolicitud();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Aqui se llena el combobox del departamento en el formulario de detalle de solicitud
            llenar_combo_Detalle_Solicitud_Departamento.LlenarComboDepartamento(txtDepartamentofk);

            //Aqui llenamos el combo del usuario con la informacion del usuario...
            llenar_combo_Detalle_Solicitud_Departamento.LlenarComboUsuario(txtClienteFk);

            //Aqui llenamos el combo con el titulo del problema u Objeto.---
            llenar_combo_Detalle_Solicitud_Departamento.LlenarComboProblema(txtProblemaFk);

            //Aqui ponemos la fecha por default en el texboxt de fecha...
            txtFechaSolicitud.Text = DateTime.Now.ToString("yyyy/MM/dd");      
        }

        protected void btnGuardarDetalleSolicitud_Click(object sender, EventArgs e)
        {
            try
            {
                //int id = Convert.ToInt32(txtIddetalleSolicitud.Text.ToString());
                DateTime fecha = Convert.ToDateTime(txtFechaSolicitud.Text);
                int Departamento = Convert.ToInt32(lblFkDepartamento.Text);
                int Cliente = Convert.ToInt32(lblFkCliente.Text);
                int Problema = Convert.ToInt32(lblFkProblema.Text);

                var msj = MessageBox.Show("Desea Guardar el registro", "Pregunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (msj == DialogResult.Yes)
                {
                    agregarDetalleSolicitud.agregarDetalleSolicitud(txtEstadoDetalleSolicitud.Text, txtEstadoSolicitud2.Text, txtPrioridadDS.Text, fecha,txtDescripcion.Text, Departamento, Cliente, Problema);
                    lblResultadoSolicitud.Text = "El registro ha sido insertado correctamente!";
                    Response.Redirect("DetalleSolicitud.aspx");
                }
                else
                {

                }
            }catch(Exception ex)
            {
                lblResultadoSolicitud.Text = "Error" + ex;
            }          
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void txtDepartamentofk_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenar_combo_Detalle_Solicitud_Departamento.Mostrar_Id_Departamento(txtDepartamentofk.Text, lblFkDepartamento);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void txtClienteFk_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenar_combo_Detalle_Solicitud_Departamento.Mostrar_Id_Usuario(txtClienteFk.Text, lblFkCliente);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void txtProblemaFk_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenar_combo_Detalle_Solicitud_Departamento.Mostrar_Id_Problema(txtProblemaFk.Text, lblFkProblema);
        }
    }
}