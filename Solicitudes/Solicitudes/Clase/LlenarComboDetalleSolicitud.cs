using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Web.UI.WebControls;

namespace Solicitudes.Clase
{
    public class LlenarComboDetalleSolicitud : Conexion
    {
        //----------------------------------------------------------------------------------------//
        /// <summary>
        /// Aqui se llena el combobox con los nombres de los departamentos...
        /// </summary>
        /// <param name="ComboDepartamento"></param>
        public void LlenarComboDepartamento(DropDownList ComboDepartamento)
        {
            cn.Open();
            string SentenciaSql = "select Nombre_Departamento from tblDepartamento";
            comando = new SqlCommand(SentenciaSql, cn);
            reader = comando.ExecuteReader();
            while (reader.Read())
            {
                ComboDepartamento.Items.Add(reader["Nombre_Departamento"].ToString());
            }
            cn.Close();
        }
       /// <summary>
       /// Aqui mostramos el id del nombre del departamento seleccionado
       /// </summary>
       /// <param name="Nombre_Departamento"></param>
       /// <param name="Id"></param>
        public void Mostrar_Id_Departamento(string Nombre_Departamento, System.Web.UI.WebControls.TextBox id)
        {
            cn.Open();
            string SentenciaSql = "select Id_Departamento from tblDepartamento where Nombre_Departamento = '" + Nombre_Departamento + "'";
            comando = new SqlCommand(SentenciaSql, cn);
            reader = comando.ExecuteReader();
            while (reader.Read())
            {
                
                id.Text = reader["Id_Departamento"].ToString();
            }
            cn.Close();
        }

        //----------------------------------------------------------------------------------------//

        /// <summary>
        /// 
        /// </summary>
        /// <param name="ComboUsuario"></param>
        public void LlenarComboUsuario(DropDownList ComboUsuario)
        {
            cn.Open();
            string SentenciaSql = "select Nombre_Usuario from tblUsuario";
            comando = new SqlCommand(SentenciaSql, cn);
            reader = comando.ExecuteReader();
            while (reader.Read())
            {
                ComboUsuario.Items.Add(reader["Nombre_Usuario"].ToString());
            }
            cn.Close();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="Nombre_Departamento"></param>
        /// <param name="id"></param>
        public void Mostrar_Id_Usuario(string Nombre_Usuario, System.Web.UI.WebControls.TextBox id)
        {
            cn.Open();
            string SentenciaSql = "select Id_Usuario from tblUsuario where Nombre_Usuario = '" + Nombre_Usuario + "'";
            comando = new SqlCommand(SentenciaSql, cn);
            reader = comando.ExecuteReader();
            while (reader.Read())
            {

                id.Text = reader["Id_Usuario"].ToString();
            }
            cn.Close();
        }

        //----------------------------------------------------------------------------------------//

        /// <summary>
        /// 
        /// </summary>
        /// <param name="ComboProblema"></param>
        public void LlenarComboProblema(DropDownList ComboProblema)
        {
            cn.Open();
            string SentenciaSql = "select Titulo_Problema from tblProblemas";
            comando = new SqlCommand(SentenciaSql, cn);
            reader = comando.ExecuteReader();
            while (reader.Read())
            {
                ComboProblema.Items.Add(reader["Titulo_Problema"].ToString());
            }
            cn.Close();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="Nombre_Problema"></param>
        /// <param name="id"></param>
        public void Mostrar_Id_Problema(string Nombre_Problema, System.Web.UI.WebControls.TextBox id)
        {
            cn.Open();
            string SentenciaSql = "select Id_Problema from tblProblemas where Titulo_Problema = '" + Nombre_Problema + "'";
            comando = new SqlCommand(SentenciaSql, cn);
            reader = comando.ExecuteReader();
            while (reader.Read())
            {

                id.Text = reader["Id_Problema"].ToString();
            }
            cn.Close();
        }

        //----------------------------------------------------------------------------------------//
    }
}