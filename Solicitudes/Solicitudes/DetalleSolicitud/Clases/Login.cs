using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Solicitudes.DetalleSolicitud.Clases
{
    public class Login:ConexionS
    {
        public bool Loguear_Usuario(string Nombre, string Contraseña)
        {
            bool resultado = false;

            string SentenciaSql = string.Format("select Id_Usuario from tblUsuario where Nombre_Usuario='" + Nombre + "' and Contraseña='" + Contraseña + "'");
            try
            {
                cn.Open();
                comando = new SqlCommand(SentenciaSql, cn);
                reader = comando.ExecuteReader();
                if (reader.Read())
                {
                    resultado = true;
                }
                else
                {
                    //MessageBox.Show("Usuario/Contraseña incorrectas.", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                this.cn.Close();
            }
            catch
            {


            }
            return resultado;

        }
    }
}