using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UTTT.Ejemplo.Linq.Data.Entity;
using UTTT.Ejemplo.Persona.Control.Ctrl;

namespace UTTT.Ejemplo.Persona.Views1
{
    public partial class Login : System.Web.UI.Page
    {
       
       private DataContext dcGlobal = new DcGeneralDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ingresa_Click(object sender, EventArgs e)
        {
            try
            {
                var usuario = dcGlobal.GetTable<User>().First(u => u.strUsuario == this.tbUsuario.Text);
                if (Encriptar.Encrypt(this.tbPassword.Text) == usuario.strPassword)
                {
                    Session["usuario"] = usuario;
                    this.Response.Redirect("~/Views1/Inicio.aspx", false);
                }
          
            }
            catch (Exception ex)
            {
                this.showMessage("error");
            }
        }

        protected void Registro(object sender, EventArgs e)
        {
            Response.Redirect("~/Views1/Registrarse.aspx");

        }

    }
    }
