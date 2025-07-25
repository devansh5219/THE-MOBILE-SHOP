﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_VIEWPAYMENT : System.Web.UI.Page
{
    DS_ORDER.ORDER_SELECTDataTable ODT = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();

    DS_PAyment.PAYMENTMST_SELECTDataTable PDT = new DS_PAyment.PAYMENTMST_SELECTDataTable();
    DS_PAymentTableAdapters.PAYMENTMST_SELECTTableAdapter PAdapter = new DS_PAymentTableAdapters.PAYMENTMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            PDT = PAdapter.SELECT_DIST();
            drpuser.DataSource = PDT;
            drpuser.DataTextField = "UNAME";
            drpuser.DataValueField = "UNAME";
            drpuser.DataBind();
            drpuser.Items.Insert(0, "SELECT");
        
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {

        PDT = PAdapter.Select_BY_UNAME(drpuser.SelectedItem.Text);
        GridView1.DataSource = PDT;
        GridView1.DataBind();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        PDT = PAdapter.Select_BY_UNAME(drpuser.SelectedItem.Text);
        GridView1.DataSource = PDT;
        GridView1.DataBind();
        Response.Clear();
        Response.Buffer = true;
        Response.ContentType = "application/ms-excel";
        Response.AddHeader("content-disposition", string.Format("attachment;filename={0}.xls", "Payment_Report"));
        Response.Charset = "";

        System.IO.StringWriter stringwriter = new System.IO.StringWriter();
        HtmlTextWriter htmlwriter = new HtmlTextWriter(stringwriter);
        GridView1.RenderControl(htmlwriter);
        Response.Write(stringwriter.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
}