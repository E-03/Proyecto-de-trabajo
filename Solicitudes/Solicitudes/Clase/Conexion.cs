using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Solicitudes.Clase
{
    public class Conexion
    {
        protected SqlConnection cn;
        protected SqlCommand comando;
        protected SqlDataAdapter adaptador;
        protected SqlDataReader reader;
        protected DataSet ds;
        protected DataTable dt;

        public Conexion()
        {
            cn = new SqlConnection(@"Data Source=EBERFABAL\SQLEXPRESS;Initial Catalog=dbSolicitudesWF;Integrated Security=True");
        }
    }
}