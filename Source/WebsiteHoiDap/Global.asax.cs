using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebsiteHoiDap
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // trạng thái đăng nhập
            Session["IsLogin"] = 0;
            // tên tài khoản
            Session["IdUser"] = 0;
            // tên tài khoản
            Session["Username"] = "Username";
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            
        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Session.Abandon();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}