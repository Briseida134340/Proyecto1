<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonaManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.PersonaManager" debug=false%>
<%@ Register  Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    
    <script type="text/javascript">

    function validaNumeros(evt) {
        //valida que solo se ingresen numeros en la cajs de texto
        var code = (evt.which) ? evt.which : evt.keycode;
        if (code == 8) {
            return true;
        } else if (code >= 48 && code <= 57) {
            return true;
        } else {
            return false;
        }
    }

    function validaLetras(e) {
        //validad que solo se ingresen letras y algunos caracteres especiales
        key = e.keycode || e.which;
        tecla = String.fromCharCode(key).toLowerCase();
        letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
        especiales = "8-37-39-46"
        teclas_especiales = false;
        for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
        }

        if (letras.indexOf(tecla) == -1 && !teclas_especiales) {
            return false;
        }
        }

        function validaLetrasYNumeros(evt) {
            var code = (evt.which) ? evt.which : evt.keyCode;
            

            if (code == 8) {
                return true;
            } else if (code >= 48 && code <= 57 ) {
                return true;
            } else if (code >= 65 && code <= 90) {
                return true;
            }
            else {
                return false;
            }
        }



        


    </script> 
</head>
<body>
    <form id="form1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>

        <div class="container">
            <div class="card" style="margin-bottom: 50px; margin-top: 50px; margin-left: 100px; margin-right: 100px;">
           
            <div class="card-header">
                <h1 style="text-align: center">Persona</h1>
            </div>

            <div class="card-body">
                
            <div>
             Acción:
              <asp:Label ID="lblAccion" runat="server" Text="Accion" Font-Bold="True"></asp:Label>

            </div>


            <div>
                <asp:Label ID="lblmensaje" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>


                <div>

                    <asp:UpdatePanel ID="UpdatePanel" runat="server">
                        <ContentTemplate>
                            <div>
                                <asp:Label for="exampleFormControlTextarea1" class="form-label" runat="server">Sexo:</asp:Label>

                                <asp:DropDownList ID="ddlSexo" Class="form-control" runat="server"
                                    OnSelectedIndexChanged="ddlSexo_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ddlSexo" ErrorMessage="Selecciona Campo!" MaximumValue="3" MinimumValue="0" Type="Integer" EnableClientScript="False"></asp:RangeValidator>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddlSexo" EventName="SelectedIndexChanged" />
                        </Triggers>

                    </asp:UpdatePanel>

                </div>
        
                <div>
                    <asp:Label for="exampleFormControlTextarea1" class="form-label" runat="server">Clave Unica:</asp:Label>

                    <asp:TextBox ID="txtClaveUnica" CssClass="form-control" runat="server"
                        ViewStateMode="Disabled"
                        onkeypress="return validaNumeros(event);" pattern=".{1,3}"
                        title="1 a 3 es la longitud maxima que se permite ingresar"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtClaveUnica" ErrorMessage="Campo vacio" EnableClientScript="False"></asp:RequiredFieldValidator>

                </div>

                <div>
                    <asp:Label for="exampleFormControlTextarea1" class="form-label" runat="server">Nombre:</asp:Label>
                    <asp:TextBox
                        ID="txtNombre" CssClass="form-control" runat="server" ViewStateMode="Disabled"
                        onkeypress="return validaLetras(event);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El campo nombre es obligatorio" ControlToValidate="txtNombre" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Solo letras." ControlToValidate="txtNombre" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>


                </div>

                <div>
                    <asp:Label for="exampleFormControlTextarea1" class="form-label" runat="server">A Paterno:</asp:Label>

                    <asp:TextBox
                        ID="txtAPaterno" CssClass="form-control" runat="server" ViewStateMode="Disabled"
                        onkeypress="return validaLetras(event);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="El campo Apellido Paterno es obligatorio" ControlToValidate="txtAPaterno" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Solo letras." ControlToValidate="txtAPaterno" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>

                </div>

                <div>
                    <asp:Label for="exampleFormControlTextarea1" class="form-label" runat="server">Apellido Materno:</asp:Label>
                    <asp:TextBox ID="txtAMaterno" CssClass="form-control" runat="server"
                        ViewStateMode="Disabled"
                        onkeypress="return validaLetras(event);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="El campo Apellido Materno es obligatorio" ControlToValidate="txtAMaterno" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Solo letras." ControlToValidate="txtAMaterno" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>


                </div>


                <div>

                    <div align="left">

                        <asp:Label for="exampleFormControlTextarea1" class="form-label" runat="server">Curp:</asp:Label>

                        <asp:TextBox ID="txtCURP" CssClass="form-control" runat="server"
                            onkeypress="return validaLetrasYNumeros(event);"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCURP" ErrorMessage="*Curp incorrecto" EnableClientScript="False"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCURP" runat="server" ClientIDMode="AutoID" ControlToValidate="txtCURP" ErrorMessage="*Curp Incorrecta!!" ValidationExpression="^[A-Z]{1}[AEIOU]{1}[A-Z]{2}[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])[HM]{1}(AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE)[B-DF-HJ-NP-TV-Z]{3}[0-9A-Z]{1}[0-9]{1}$" EnableClientScript="False"></asp:RegularExpressionValidator>

                    </div>

                </div>

                <div class="col">
                    <asp:Label for="exampleFormControlTextarea1" class="form-label" runat="server">Fecha de Nacimiento</asp:Label>

                    <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:ImageButton ID="imgPopup" ImageUrl="~/Images/editrecord_16x16.png"
                        runat="server" CausesValidation="False" Width="25px"/>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" PopupButtonID="imgPopup" Format="dd/MM/yyyy"
                        runat="server" TargetControlID="txtFechaNacimiento"/>
                </div>


                <div class="row">
                    <div class="d-grid gap-2">
                        <div class="btn-group contenedor-botones" role="group">
                            <asp:Button ID="btnAceptar" class="btn btn-outline-primary" runat="server" Text="Aceptar"
                                OnClick="btnAceptar_Click" ViewStateMode="Disabled" />
                            &nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btnCancelar" class="btn btn-outline-primary" runat="server" Text="Cancelar"
                     OnClick="btnCancelar_Click" ViewStateMode="Disabled" CausesValidation="False" />

                        </div>
                    </div>

                </div>

        </div>
            
            </div>
        </div>

        
            


        
       

     
    </form>
</body>
</html>
