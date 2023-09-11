<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio2.aspx.cs" Inherits="trabajoClase2.inicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:HyperLink ID="registroHL" runat="server" NavigateUrl="~/registrarCobro.aspx">Ir a pagina de registro de cobros.</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="listadoHL" runat="server" NavigateUrl="~/listadoCobros.aspx">Ir a listado de cobros realizados</asp:HyperLink>
    </form>
</body>
</html>
