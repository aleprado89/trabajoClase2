using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabajoClase2
{
    public partial class registrarCobro : System.Web.UI.Page
    {
        //Load
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void registrarPago(string apellido, string nombre, string fecha, decimal monto)
        {
            StreamWriter archivo = new StreamWriter(this.Server.MapPath(".") + "/montosCobrados.txt", true);
            archivo.WriteLine("Apellido: " + apellido + "<br>");
            archivo.WriteLine("Nombre: " + nombre + "<br>");
            archivo.WriteLine("Fecha: " + fecha + "-");
            archivo.WriteLine(monto + ";");
            archivo.Close();

            resultadoLB.Text = "Se registro el cobro de $" + monto.ToString() + " del cliente " + apellido + ", " + nombre + "<br>" + "Fecha: " + fecha;
        }

        //Registrar Cobro
        protected void registrarBT_Click(object sender, EventArgs e)
        {
            string apellido, nombre, monto, fechaPago;
            decimal montoDecimal;

            apellido = apellidoTB.Text;
            nombre = nombreTB.Text;

            if (apellido != "" && nombre != "")
            {
                if (fechaPagoCL.SelectedDates.Count > 0)
                {
                    fechaPago = fechaPagoCL.SelectedDate.ToShortDateString();

                    monto = montoPagadoTB.Text;

                    if (decimal.TryParse(monto, out montoDecimal))
                    {
                        registrarPago(apellido, nombre, fechaPago, montoDecimal);
                    }
                    else
                    {
                        resultadoLB.Text = "El monto ingresado es incorrecto.";
                    }
                }
                else
                {
                    resultadoLB.Text = "Falta seleccionar una fecha de pago.";
                }
            }
            else
            {
                resultadoLB.Text = "Falta ingresar el nombre del cliente.";
            }
        }
    }
}