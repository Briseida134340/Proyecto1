using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UTTT.Ejemplo.Linq.Data.Entity;
using UTTT.Ejemplo.Persona.Control.Ctrl;

namespace UTTT.Ejemplo.Persona.Views1
{
    public partial class Inicio : System.Web.UI.Page
    {
        private DataContext dcGlobal = new DcGeneralDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlPerfil_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int idPerfil = int.Parse(this.ddlPerfil.Text);
                Expression<Func<CatPerfil, bool>> predicatePerfil = c => c.id == idPerfil;
                predicatePerfil.Compile();
                List<CatPerfil> lista = dcGlobal.GetTable<CatPerfil>().Where(predicatePerfil).ToList();
                CatSexo catTemp = new CatSexo();
                this.ddlPerfil.DataTextField = "strValor";
                this.ddlPerfil.DataValueField = "id";
                this.ddlPerfil.DataSource = lista;
                this.ddlPerfil.DataBind();
            }
            catch (Exception)
            {
                this.showMessage("Ha ocurrido un error inesperado");
            }
        }
    }
}
