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

namespace WebsiteHoiDap.MasterPages
{
    public partial class AZ : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgbtnDatCauHoi_Click(object sender, ImageClickEventArgs e)
        {
            string URL = "DatCauHoi.aspx?noidungcauhoi=";
            URL += txtDatCauHoi.Text;
            Response.Redirect(URL);
        }

        protected void imgbtnTimKiem_Click(object sender, ImageClickEventArgs e)
        {
            string URL = "TimKiem.aspx?q=";
            URL += txtTimKiem.Text;
            Response.Redirect(URL);
        }

       
    }
}
