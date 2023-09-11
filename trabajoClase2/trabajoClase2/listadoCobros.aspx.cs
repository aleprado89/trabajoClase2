using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabajoClase2
{
    public partial class listadoCobros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (File.Exists(this.Server.MapPath(".") + "/montosCobrados.txt"))
            {
                DataTable pagos = new DataTable();
                DataColumn column = new DataColumn("datos");
                pagos.Columns.Add(column);
                column = new DataColumn("monto", typeof(decimal));
                pagos.Columns.Add(column);

                string datos;
                string[] registros;

                StreamReader archivo = new StreamReader(this.Server.MapPath(".") + "/montosCobrados.txt");
                datos = archivo.ReadToEnd();
                archivo.Close();

                registros = datos.Replace("\r\n", string.Empty).Split(';');

                foreach (string s in registros)
                {
                    string[] div = s.Split('-');

                    if (div[0] != "")
                    {
                        DataRow row = pagos.NewRow();
                        row["datos"] = div[0];
                        row["monto"] = div[1];
                        pagos.Rows.Add(row);
                    }
                }
                pagos.DefaultView.Sort = "monto DESC";
                pagos = pagos.DefaultView.ToTable();

                string listado = "<hr>";

                foreach (DataRow row in pagos.Rows)
                {
                    listado = listado + row[0].ToString() + "<br>";
                    listado = listado + row[1].ToString() + "<br><hr>";
                }
                listadoLB.Text = listado;
            }
        }
    }
}