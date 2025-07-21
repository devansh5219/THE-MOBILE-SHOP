using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;


public partial class admin_REPORTS : System.Web.UI.Page
{
    DS_CAT.CATEMST_SELECTDataTable CDT = new DS_CAT.CATEMST_SELECTDataTable();
    DS_CATTableAdapters.CATEMST_SELECTTableAdapter CAdapter = new DS_CATTableAdapters.CATEMST_SELECTTableAdapter();
    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter.select();
            DropDownList1.DataSource = CDT;
            DropDownList1.DataTextField = "Cname";
            DropDownList1.DataValueField = "Cid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "SELECT");
        }

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        IDT = IAdapter.Select_BY_CNAME(DropDownList1.SelectedItem.Text);
        GridView1.DataSource = IDT;
        GridView1.DataBind();
        lblmsg.Text = "Total " + GridView1.Rows.Count.ToString() + " Record Found";



    }
    protected void Button10_Click(object sender, EventArgs e)
    {

        IDT = IAdapter.Select_BY_CNAME(DropDownList1.SelectedItem.Text);
        GridView1.DataSource = IDT;
        GridView1.DataBind();
        //lblmsg.Text = "Total " + GridView1.Rows.Count.ToString() + " Record Found";
       
       

        Response.Clear();
        Response.Buffer = true;
        Response.ContentType = "application/ms-excel";
        Response.AddHeader("content-disposition", string.Format("attachment;filename={0}.xls", "Report"));
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