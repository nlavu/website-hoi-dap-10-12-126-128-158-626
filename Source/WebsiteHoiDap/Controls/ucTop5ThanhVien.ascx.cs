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
    public partial class ucTop5ThanhVien : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ThanhVien thanhVien = new ThanhVien();
            this.grvTọp5ThanhVien.DataSource = thanhVien.LayDSThanhVien();
            this.grvTọp5ThanhVien.DataBind();
         }
        protected void grvTọpThanhVien_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}