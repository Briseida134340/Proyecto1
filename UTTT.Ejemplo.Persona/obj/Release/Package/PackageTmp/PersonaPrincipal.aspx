﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonaPrincipal.aspx.cs" Inherits="UTTT.Ejemplo.Persona.PersonaPrincipal" Debug="false" %>
<%@ Register  Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>


        <div style="color: #000000; font-size: medium; font-family: Arial; font-weight: bold">
           <h1 style="text-align:center">Persona</h1>
        </div>
       
        
        
        <div>

            <p>
                Normbre:

        <asp:TextBox ID="txtNombre" runat="server" Width="174px"
            OnTextChanged="buscarTextBox" AutoPostBack="true"
            ViewStateMode="Disabled"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <ajaxToolkit:AutoCompleteExtender ID="AutoCompleterExtender" runat="server" CompletionInterval="100" EnableCaching="false"
            MinimumPrefixLength="2" ServiceMethod="txtNombre_TextChanged" TargetControlID="txtNombre">
        </ajaxToolkit:AutoCompleteExtender>

        <asp:Button ID="btnBuscar" class="btn btn-outline-primary" runat="server" Text="Buscar"
            OnClick="btnBuscar_Click" ViewStateMode="Disabled" />
                &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAgregar" class="btn btn-outline-primary" runat="server" Text="Agregar"
            OnClick="btnAgregar_Click" ViewStateMode="Disabled" />
            </p>
        </div>



        <div>
            Sexo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlSexo" runat="server" Height="22px" Width="177px">
        </asp:DropDownList>

        </div>
        <div style="font-weight: bold">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Detalle
        </div>

        <div>
        </div>

        <div>

            <asp:GridView ID="dgvPersonas" CssClass="table table-bordered table-condensed table-responsive table-hover " runat="server"
                AllowPaging="True" AutoGenerateColumns="False" DataSourceID="DataSourcePersona"
                Width="1067px" CellPadding="3" GridLines="Horizontal"
                OnRowCommand="dgvPersonas_RowCommand" BackColor="White"
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
                ViewStateMode="Disabled">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="strClaveUnica" HeaderText="Clave Unica"
                        ReadOnly="True" SortExpression="strClaveUnica" />
                    <asp:BoundField DataField="strCURP" HeaderText="Curp"
                        ReadOnly="True" SortExpression="strCURP" />
                    <asp:BoundField DataField="strNombre" HeaderText="Nombre" ReadOnly="True"
                        SortExpression="strNombre" />
                    <asp:BoundField DataField="strAPaterno" HeaderText="APaterno" ReadOnly="True"
                        SortExpression="strAPaterno" />
                    <asp:BoundField DataField="strAMaterno" HeaderText="AMaterno" ReadOnly="True"
                        SortExpression="strAMaterno" />
                    <asp:BoundField DataField="CatSexo" HeaderText="Sexo"
                        SortExpression="CatSexo" />
                    <asp:TemplateField HeaderText="Editar">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ID="imgEditar" CommandName="Editar" CommandArgument='<%#Bind("id") %>' ImageUrl="~/Images/editrecord_16x16.png" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Eliminar" Visible="True">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ID="imgEliminar" CommandName="Eliminar" CommandArgument='<%#Bind("id") %>' ImageUrl="~/Images/delrecord_16x16.png" OnClientClick="javascript:return confirm('¿Está seguro de querer eliminar el registro seleccionado?', 'Mensaje de sistema')" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Direccion">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ID="imgDireccion" CommandName="Direccion" CommandArgument='<%#Bind("id") %>' ImageUrl="~/Images/editrecord_16x16.png" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />

                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>

        </div>
        <asp:LinqDataSource ID="DataSourcePersona" runat="server"
            ContextTypeName="UTTT.Ejemplo.Linq.Data.Entity.DcGeneralDataContext"
            OnSelecting="DataSourcePersona_Selecting"
            Select="new (strNombre,strCURP, strAPaterno, strAMaterno, CatSexo, strClaveUnica,id)"
            TableName="Persona" EntityTypeName="">
        </asp:LinqDataSource>
    </form>
</body>
</html>
