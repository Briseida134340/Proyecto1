<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="UTTT.Ejemplo.Persona.Views1.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Features</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <div class="container">
            <div class="card" style="margin-bottom: 50px; margin-top: 50px; margin-left: 100px; margin-right: 100px;">


                <div class="card-header">
                    <h1 style="text-align: center">Registrar Usuario
                    </h1>

                </div>
                <div class="card-body">

                    <div style="font-family: Arial; font-size: medium; font-weight: bold">


                      
                            <h6>
                                <asp:Label ID="lblAccion" runat="server" Text="Registre un nuevo usuario" Font-Bold="True"></asp:Label>
                            </h6>
                        
                    </div>



                    <div>
                        <asp:Label ID="lblMensaje" runat="server" Visible="False"></asp:Label>
                    </div>

                    <div>
                         <asp:Label for="exampleFormControlTextarea1" CssClass="form-label" runat="server">Nombre de Usuario:</asp:Label>

                        <asp:TextBox ID="txtUser" runat="server" CssClass="form-control" ViewStateMode="Disabled" onkeypress="return soloLetras(event);"></asp:TextBox>

                    </div>

                    <div>
                        <asp:Label for="exampleFormControlTextarea1" CssClass="form-label" runat="server">Contraseña:</asp:Label>

                        <asp:TextBox ID="txtPassword" runat="server"    CssClass="form-control" ViewStateMode="Disabled" onkeypress="return soloLetras(event);"></asp:TextBox>

                    </div>

                    <div>
                          <asp:UpdatePanel ID="UpdatePanel" runat="server">
                            <ContentTemplate>
                                <div>
                                    <asp:Label for="exampleFormControlTextarea1" runat="server">Perfil</asp:Label>

                                    <asp:DropDownList ID="ddlPerfil" CssClass="form-control" runat="server"
                                        OnSelectedIndexChanged="ddlPerfil_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ddlPerfil" ErrorMessage="Selecciona Campo!" MaximumValue="3" MinimumValue="0" Type="Integer" EnableClientScript="False"></asp:RangeValidator>

                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ddlPerfil" EventName="SelectedIndexChanged"/>
                            </Triggers>

                        </asp:UpdatePanel>
                    </div>


                    <div class="row">
                        <div class="d-grid gap-2">
                            <div class="btn-group contenedor-botones" role="group">
                                <asp:Button ID="Button1" runat="server" Text="Aceptar"
                                    ViewStateMode="Disabled" UseSubmitBehavior="False" class="btn btn-outline-primary" OnClick="btnAceptar_Click" />
                                &nbsp;&nbsp;&nbsp;
                             <asp:Button ID="Button2" runat="server" Text="Cancelar"
                                 ViewStateMode="Disabled" CausesValidation="False" class="btn btn-outline-primary" OnClick="btnCancelar_Click" />


                            </div>
                        </div>

                </div>

                </div>

            </div>

        </div>
        
     
    </form>
    
</body>
</html>
