using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Solicitudes.Clase
{
    public class CrudObjetosProblemas : DetalleSolicitud.Clases.ConexionS
    {
        public void agregarObtetoProblema(string TituloObjeto, string DescripcionProblema)
        {
            try
            {
                this.cn.Open();
                string sql = "pro_GuardarProblema";
                comando = new SqlCommand(sql, cn);
                comando.Parameters.Add("@NombreProblema", SqlDbType.VarChar, 250).Value = TituloObjeto;
                comando.Parameters.Add("@descripcion", SqlDbType.VarChar, 200).Value = DescripcionProblema;
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