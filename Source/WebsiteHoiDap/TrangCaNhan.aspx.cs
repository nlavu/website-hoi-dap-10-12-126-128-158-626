using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace WebsiteHoiDap
{
    public partial class TrangCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            idDSCauHoi.Visible = false;
            idDSCauTraLoi.Visible = false;

            string type = String.Empty;
            type = Request.QueryString["type"];
            switch (type)
            {
                case "cauhoi":
                    idDSCauHoi.Visible = true;
                    break;
                case "traloi":
                    idDSCauTraLoi.Visible = true;
                    break;
                case "dstheodoi":
                    //idDSCauHoi.Visible = true;
                    break;
                default:
                    idDSCauHoi.Visible = true;
                    break;
            }
        }
    }
}
