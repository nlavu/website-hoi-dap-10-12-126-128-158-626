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
        //Edit by : Anh Vũ
        protected void Page_Load(object sender, EventArgs e)
        {
            ThanhVien thanhVien = new ThanhVien();

            this.grvTop5ThanhVien.DataSource = thanhVien.LayDSThanhVien();
            this.grvTop5ThanhVien.DataBind();
         } 
    }
}