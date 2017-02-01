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
    public class llenarGridPorCombo : ConexionS
    {
        public void LlenarGridDetalleVenta(DataGridView GridView)
        {
            this.cn.Open();
            SqlDataAdapter da = new SqlDataAdapter("pro_Ver_Todas_Las_Solicitudes", cn);
            DataSet dscliente = new DataSet();
            da.Fill(dscliente, "tblDetalleSolicitud,tblDepartamento,tblUsuario,tblProblemas");
            GridView.DataSource = dscliente;
            GridView.DataMember = "tblDetalleSolicitud,tblDepartamento,tblUsuario,tblProblemas";
            this.cn.Close();
        }

        
    }
}