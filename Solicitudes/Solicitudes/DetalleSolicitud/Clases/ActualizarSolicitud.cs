using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Solicitudes.DetalleSolicitud.Clases
{
    public class ActualizarSolicitud : ConexionS
    {
        public void actualizarDetalleSolicitud(int Id_Detalle_Solicitud,string Estado_Solicitud, string Estado_Solicitud2, int Departamento_SolicitanteFK)
        {
            try
            {
                this.cn.Open();
                string sql = "pro_Actualizar_Detalle_Solicitud";
                comando = new SqlCommand(sql, cn);
                comando.Parameters.Add("@Id", SqlDbType.Int).Value=Id_Detalle_Solicitud;
                comando.Parameters.Add("@Estado_Solicitud", SqlDbType.VarChar, 50).Value = Estado_Solicitud;
                comando.Parameters.Add("@Accion", SqlDbType.VarChar, 50).Value = Estado_Solicitud2;
                comando.Parameters.Add("@DepartamentoSolicitud", SqlDbType.Int).Value = Departamento_SolicitanteFK;          
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