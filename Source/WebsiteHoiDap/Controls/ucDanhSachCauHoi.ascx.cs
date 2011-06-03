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
using System.Data;
using System.Collections.Generic;

namespace WebsiteHoiDap.Controls
{
    public partial class ucDanhSachCauHoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int maChuDe = 0;
            if (int.TryParse(Request.QueryString["machude"], out maChuDe))
            {
                List<WebsiteHoiDap.BUS.CauHoi> lstCauHoi = WebsiteHoiDap.BUS.CauHoi.LayCauHoiTheoChuDe(maChuDe);
                dlDSCauHoi.DataSource = lstCauHoi;
                dlDSCauHoi.DataBind();
            }
            else
            {
                List<WebsiteHoiDap.BUS.CauHoi> lstCauHoi = WebsiteHoiDap.BUS.CauHoi.LayDSCauHoi();
                dlDSCauHoi.DataSource = lstCauHoi;
                dlDSCauHoi.DataBind();
            }            
        }
    }
}