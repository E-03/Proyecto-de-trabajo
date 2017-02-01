using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Solicitudes.DetalleSolicitud.Clases
{
    public class AgregarSolicitud : ConexionS
    {
        public void agregarDetalleSolicitud(string Prioridad_Solicitud, DateTime Fecha_solicitud, string Descripcion, int Id_ClienteFk, int Id_Problemafk)
        {
            try
            {
                this.cn.Open();
                string sql = "proc_AgregarSolicitud_nueva";
                comando = new SqlCommand(sql, cn);
                comando.Parameters.Add("@Prioridad_Solicitud", SqlDbType.VarChar, 50).Value = Prioridad_Solicitud;
                comando.Parameters.Add("@Fecha_solicitud", SqlDbType.DateTime).Value = Fecha_solicitud;
                comando.Parameters.Add("@Descripcion_Solicitud", SqlDbType.VarChar, 200).Value = Descripcion;
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