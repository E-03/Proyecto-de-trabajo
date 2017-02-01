using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace Solicitudes.Clase
{
    public class Login : Conexion
    {
        public bool Loguear_empleado(string Nombre, string Contraseña)
        {
            bool resultado = false;
            string SentenciaSql;
            SentenciaSql = string.Format("select Id_Empleado from tbl_Empleado where Nombre='"+Nombre+"' and Contraseña='"+Contraseña+"'");
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
                    MessageBox.Show("Usuario/rol/Contraseña incorrectas.", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
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