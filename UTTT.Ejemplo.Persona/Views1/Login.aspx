<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UTTT.Ejemplo.Persona.Views1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <title></title>
</head>
    <body class="bg-light">
      <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">
   <img src="../Images/avatar.png" width="30" height="30" class="d-inline-block align-top" alt="">
        Proyecto Persona
 </a>
</nav>
    <br />
    <br />
    <br />
    <div class="wrapper">
        <div class="formcontent">
            <form id="formulario_login" runat="server">
                <div class="form-control">
                    <div class="row">
                        <asp:Label class="h2" ID="lblBienvenida" runat="server" Text="Bienvenido/a al Sistema"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                        <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="tbPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                    </div>
                    
                      
                    <hr />
                    <div class="row">
                        <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="Ingresa_Click"  />
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="Button1" CssClass="btn btn-primary btn-secondary" runat="server" Text="Registrarse" OnClick="Registro"  />
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
</body>
</html>
