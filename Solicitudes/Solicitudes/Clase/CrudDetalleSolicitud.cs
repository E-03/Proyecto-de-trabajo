using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Solicitudes.Clase
{
    public class CrudDetalleSolicitud : Conexion
    {
        public void agregarDetalleSolicitud(/*int Id_Detalle_Solicitud,*/string Estado_Solicitud, string Estado_Solicitud2, string Prioridad_Solicitud, DateTime Fecha_solicitud,string Descripcion, int Departamento_SolicitanteFK, int Id_ClienteFk, int Id_Problemafk)
        {
            try
            {
                this.cn.Open();
                string sql = "proc_AgregarSolicitud";
                comando = new SqlCommand(sql, cn);
                //comando.Parameters.Add("@Id_Detalle_Solicitud", SqlDbType.Int).Value = Id_Detalle_Solicitud;
                comando.Parameters.Add("@Estado_Solicitud", SqlDbType.VarChar, 50).Value = Estado_Solicitud;
                comando.Parameters.Add("@Accion", SqlDbType.VarChar, 50).Value = Estado_Solicitud2;
                comando.Parameters.Add("@Prioridad_Solicitud", SqlDbType.VarChar, 50).Value = Prioridad_Solicitud;
                comando.Parameters.Add("@Fecha_solicitud", SqlDbType.DateTime).Value = Fecha_solicitud;
                comando.Parameters.Add("@Descripcion_Solicitud", SqlDbType.VarChar, 200).Value = Descripcion;
                comando.Parameters.Add("@Departamento_SolicitanteFK", SqlDbType.Int).Value = Departamento_SolicitanteFK;
                comando.Parameters.Add("@Id_ClienteFk", SqlDbType.Int).Value = Id_ClienteFk;
                comando.Parameters.Add("@Id_Problemafk", SqlDbType.Int).Value = Id_Problemafk;
                comando.CommandType = CommandType.StoredProcedure;
                comando.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + "Error del sistema");
            }
            this.cn.Close();
        }
    }
}