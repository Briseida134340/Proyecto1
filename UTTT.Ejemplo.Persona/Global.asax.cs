using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace UTTT.Ejemplo.Persona
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            var ex = Server.GetLastError().GetBaseException();
            enviaremail(ex.ToString());


        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        public void enviaremail(string Excepcion)
        {
            MailMessage mailMessage = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();
            mailMessage.From = new MailAddress("19300972@uttt.edu.mx");
            mailMessage.To.Add(new MailAddress("edel.meza@uttt.edu.mx"));
            mailMessage.Subject = "Tarea Evaluacion";
            mailMessage.IsBodyHtml = true;
            mailMessage.Body = Excepcion;
            smtpClient.Port = 587;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new NetworkCredential("19300972@uttt.edu.mx", "BRD3512B");
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Send(mailMessage);
        }
    }
}