<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="UTTT.Ejemplo.Persona.Views1.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:Label for="exampleFormControlTextarea1" runat="server">Perfil</asp:Label>

            <asp:DropDownList ID="ddlPerfil" CssClass="form-control" runat="server"
                OnSelectedIndexChanged="ddlPerfil_SelectedIndexChanged" DataSourceID="LinqDataSource1" DataTextField="strValor" DataValueField="strValor">
            </asp:DropDownList>
          
          
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ddlPerfil" ErrorMessage="Selecciona Campo!" MaximumValue="3" MinimumValue="0" Type="Integer" EnableClientScript="False"></asp:RangeValidator>

        </div>

    </form>
</body>
</html>
