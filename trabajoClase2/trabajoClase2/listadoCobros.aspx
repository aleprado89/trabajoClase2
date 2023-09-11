<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listadoCobros.aspx.cs" Inherits="trabajoClase2.listadoCobros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center">
                <asp:Label ID="Label1" runat="server" Text="Listado de Cobros de Mayor a Menor" Font-Bold="True" Font-Size="15pt"></asp:Label>
            </asp:Panel>
        <br />
        <asp:Label ID="listadoLB" runat="server" Text="-"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="volverHL" runat="server" NavigateUrl="~/inicio2.aspx">Ir a página principal</asp:HyperLink>
    </form>
</body>
</html>
