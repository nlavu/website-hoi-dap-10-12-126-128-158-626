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
using WebsiteHoiDap.BUS;

namespace WebsiteHoiDap.Controls
{
    public partial class ucDanhSachChuDe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ChuDe chuDe = new ChuDe();
            this.grvChuDe.DataSource = chuDe.LayDSChuDe();
            this.grvChuDe.DataBind();
        }
    }
}