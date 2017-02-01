using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Solicitudes.DetalleSolicitud
{
    public partial class Informes : System.Web.UI.Page
    {
        DetalleSolicitud.Clases.llenarGridPorCombo llenarGrid = new Clases.llenarGridPorCombo();
        protected void Page_Load(object sender, EventArgs e)
        {
            //dbSolicitudesWFDataSetTableAdapters.pro_Ver_Solicitudes_AbiertasTableAdapter pr = new dbSolicitudesWFDataSetTableAdapters.pro_Ver_Solicitudes_AbiertasTableAdapter();
            //dbSolicitudesWFDataSet Solicitud = new dbSolicitudesWFDataSet();
            //pr.Fill(Solicitud.pro_Ver_Solicitudes_Abiertas, txtInformes.Text);
            
        }

        protected void btnVerInforme_Click(object sender, EventArgs e)
        {
            dbSolicitudesWFDataSetTableAdapters.pro_Ver_Solicitudes_AbiertasTableAdapter pr = new dbSolicitudesWFDataSetTableAdapters.pro_Ver_Solicitudes_AbiertasTableAdapter();
            dbSolicitudesWFDataSet Solicitud = new dbSolicitudesWFDataSet();
            pr.Fill(Solicitud.pro_Ver_Solicitudes_Abiertas,txtInformes.Text);
        }
        public void LlenarGridDetalleVenta(GridView GridView)
        {
                     
        }
    }
}