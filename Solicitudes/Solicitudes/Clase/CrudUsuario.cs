using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Solicitudes.Clase
{
    public class CrudUsuario : DetalleSolicitud.Clases.ConexionS
    {
        public void agregarUsuario(string Nombre, string Apellido, string telefono, string Correo,string contraseña, string Organizacion)
        {
            try
            {
                this.cn.Open();
                string sql = "pro_GuardarUsuario";
                comando = new SqlCommand(sql, cn);
                comando.Parameters.Add("@Nombre_Usuario", SqlDbType.VarChar, 50).Value = Nombre;
                comando.Parameters.Add("@Apellido_Usuario", SqlDbType.VarChar, 50).Value = Apellido;
                comando.Parameters.Add("@Telefono", SqlDbType.VarChar, 50).Value = telefono;
                comando.Parameters.Add("@CorreoElectronico", SqlDbType.VarChar, 50).Value = Correo;
                comando.Parameters.Add("@Contraseña", SqlDbType.VarChar, 50).Value = contraseña;
                comando.Parameters.Add("@Organizacion", SqlDbType.VarChar, 50).Value = Organizacion;
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