<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarCobro.aspx.cs" Inherits="trabajoClase2.registrarCobro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center">
                <asp:Label ID="Label1" runat="server" Text="Registro de Cobros" Font-Bold="True" Font-Size="15pt"></asp:Label>
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderWidth="2px" Height="501px" HorizontalAlign="Center">
            <br />
            <asp:Label ID="Label2" runat="server" Text="Datos del cliente:" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Apellido: "></asp:Label>
            <asp:TextBox ID="apellidoTB" runat="server" Width="220px"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Nombre: "></asp:Label>
            <asp:TextBox ID="nombreTB" runat="server" Width="220px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Fecha de pago: "></asp:Label>
            <br />
            <br />
            <div style="width:40%; margin: 0 auto;">
            <asp:Calendar ID="fechaPagoCL" runat="server" CellPadding="0" style="margin-top: 0px" Width="100%"></asp:Calendar>
            </div>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Monto pagado: "></asp:Label>
            <asp:TextBox ID="montoPagadoTB" runat="server" Width="220px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="registrarBT" runat="server" Text="Registrar" OnClick="registrarBT_Click" />
            <br />
            <br />
            <asp:Label ID="resultadoLB" runat="server" Text="-"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="volverHL" runat="server" NavigateUrl="~/inicio2.aspx">Ir a página principal</asp:HyperLink>
        </asp:Panel>
    </form>
</body>
</html>
