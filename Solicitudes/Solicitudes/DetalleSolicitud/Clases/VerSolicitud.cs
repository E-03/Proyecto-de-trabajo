using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace Solicitudes.DetalleSolicitud.Clases
{
  
    public class VerSolicitud : ConexionS
    {
        /// <summary>
        /// Mostrar Id del cliente y su informacion en el formulario de pedido
        /// </summary>
        /// <param name="Nombre"></param>
        /// <param name="Id"></param>
        public void Mostrar_Informacion_Del_Cliente(int id_Solicitud,System.Web.UI.WebControls.TextBox Prioridad_Solicitud, System.Web.UI.WebControls.TextBox Fecha
                                                    , System.Web.UI.WebControls.TextBox Cliente,System.Web.UI.WebControls.TextBox Problema
                                                    , System.Web.UI.WebControls.TextBox Descripcion, System.Web.UI.WebControls.Label lblmsj)
        {
            cn.Open();
            string SentenciaSql = "Pro_proc_Mostrar_informacion_En_Los_Texbox " + id_Solicitud + "";
            comando = new SqlCommand(SentenciaSql, cn);
            reader = comando.ExecuteReader();
            try
            {
                while (reader.Read())
                {
                    
                    Prioridad_Solicitud.Text = reader["Prioridad_Solicitud"].ToString();
                    Fecha.Text = reader["Fecha_solicitud"].ToString();
                    Cliente.Text = reader["Nombre_Usuario"].ToString();
                    Problema.Text = reader["Titulo_Problema"].ToString();
                    Descripcion.Text = reader["Descripcion_Solicitud"].ToString();
                }
            }
            catch (Exception ex)
            {
                lblmsj.Text = "Error" + ex.Message;
            }

            cn.Close();
        }

        //public void Mostrar_Informacion_Del_Cliente(int id_Solicitud, DropDownList Estado_Solicitud, DropDownList Accion, DropDownList Prioridad_Solicitud, System.Web.UI.WebControls.TextBox Fecha, System.Web.UI.WebControls.TextBox Descripcion, DropDownList Departamento, DropDownList Cliente, DropDownList Problema, System.Web.UI.WebControls.Label lblmsj)
        //{
        //    cn.Open();
        //    string SentenciaSql = "proc_Mostrar_informacion_En_Los_Texbox " + id_Solicitud + "";
        //    comando = new SqlCommand(SentenciaSql, cn);
        //    reader = comando.ExecuteReader();
        //    try
        //    {
        //        while (reader.Read())
        //        {
        //            //Estado_Solicitud.Items.Add(reader["Estado_Solicitud"].ToString());
        //            Estado_Solicitud.Text = reader["Estado_Solicitud"].ToString();
        //            Accion.Text = reader["Accion"].ToString();
        //            Prioridad_Solicitud.Text = reader["Prioridad_Solicitud"].ToString();
        //            Fecha.Text = reader["Fecha_solicitud"].ToString();
        //            Descripcion.Text = reader["Descripcion_Problema"].ToString();
        //            Departamento.Text = reader["Nombre_Departamento"].ToString();
        //            Cliente.Text = reader["Nombre_Usuario"].ToString();
        //            Problema.Text = reader["Titulo_Problema"].ToString();

        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        lblmsj.Text = "Error" + ex.Message;
        //    }

        //    cn.Close();
        //}
    }
}




//int id_Solicitud, DropDownList Estado_Solicitud
//                                                    ,DropDownList Accion, DropDownList Prioridad_Solicitud, System.Web.UI.WebControls.TextBox Fecha
//                                                    ,System.Web.UI.WebControls.TextBox Descripcion, DropDownList Departamento, DropDownList Cliente
//                                                    , DropDownList Problema,System.Web.UI.WebControls.Label lblmsj