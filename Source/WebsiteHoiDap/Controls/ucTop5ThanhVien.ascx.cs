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
    public partial class ucTop5ThanhVien : System.Web.UI.UserControl
    {
        //Edit by : Anh Vũ
        protected void Page_Load(object sender, EventArgs e)
        {
            ThanhVien thanhVien = new ThanhVien();
            List<ThanhVien> lstThanhVien = thanhVien.LayDSThanhVien();
            List<ThanhVien> lstTop5 = new List<ThanhVien>();

            if (lstThanhVien.Count == 0)
                return;
            for (int i = 0; i < 5; i++)
            {
                try
                {
                    lstTop5.Add(lstThanhVien[i]);
                }
                catch
                {
                    this.grvTop5ThanhVien.DataSource = lstTop5;
                    this.grvTop5ThanhVien.DataBind();
                    return;
                }
            }

            this.grvTop5ThanhVien.DataSource = lstTop5;
            this.grvTop5ThanhVien.DataBind();
         } 
    }
}