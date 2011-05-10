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
using System.Collections.Generic;
namespace WebsiteHoiDap.Controls
{
    public partial class ucDSCauTraLoiCuaThanhVien : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CauTraLoi cauTraLoi = new CauTraLoi();
            int IDUser = 1;
            List<CauTraLoi> lstCauTraLoiThanhVien = new List<CauTraLoi>();
            lstCauTraLoiThanhVien = cauTraLoi.LayDSCauTraLoiTheoMaNguoiTraLoi(IDUser);
            this.grvCauTraLoiThanhVien.DataSource = lstCauTraLoiThanhVien;
            this.grvCauTraLoiThanhVien.DataBind();
        }
    }
}