using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UTTT.Ejemplo.Linq.Data.Entity;

namespace UTTT.Ejemplo.Persona.Views1
{
    public partial class Libros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                var data = new DcGeneralDataContext();
                Libros libros = new Libros();
                User user = new User();


                var usuarioSession = (User)Session["usuario"];


                //Traigo los productos que corresponden a ese id
                var productos = data.GetTable<Libros>();
                GridView1.DataSource = productos;
                GridView1.DataBind();
            }
        }
    }
}