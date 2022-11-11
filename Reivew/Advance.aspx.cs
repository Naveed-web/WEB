using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Advance : System.Web.UI.Page
{
      double amount, Surcharge, amount1, Surcharge1, finalAmount, SurchargeNew, amountNew;
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.ll39();
        Master.Employees();

        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                getData();
            }
        }
    }
    public void getData()
    {
        string q = "Select * from Advance where Id = '" + Request.QueryString["id"] + "'";
        DataSet ds = new DataSet();
        ds = db.funGetDataSet(q);
        if (ds.Tables[0].Rows.Count > 0)
        {  
             DateTime dt = Convert.ToDateTime(ds.Tables[0].Rows[0]["Date"]);
             string sNewDate = dt.ToString("MMMM,yyyy");
             txtDate.Text = sNewDate;
             txtAdvance.Text = ds.Tables[0].Rows[0]["Advance"].ToString();
             txtReason.Text = ds.Tables[0].Rows[0]["Reason"].ToString();
             DrpEmployee.SelectedValue = ds.Tables[0].Rows[0]["EmpId"].ToString();
        }
        btn.Text = "Update";
    }
    protected void btn_Click(object sender, EventArgs e)
    {

        if (btn.Text == "Save")
        {
            DateTime dt = Convert.ToDateTime(txtDate.Text);
            string sNewDate = dt.ToString("MMMM,yyyy");
            string q = "insert into Advance(EmpId,Date,Advance,Reason) values('" + DrpEmployee.SelectedValue + "','" + sNewDate + "','" + txtAdvance.Text + "','" + txtReason.Text + "')";
            db.insert(q);
            Label1.Text = "Data Added Successfully";
        }
        else
        {
            DateTime dt = Convert.ToDateTime(txtDate.Text);
            string sNewDate = dt.ToString("MMMM,yyyy");
            string q = "update Advance set EmpId = '" + DrpEmployee.SelectedValue + "',Date = '" + sNewDate + "',Advance = '" + txtAdvance.Text + "',Reason = '" + txtReason.Text + "' where Id = '" + Request.QueryString["Id"] + "'";
            db.insert(q);
            Label1.Text = "Data Updated Successfully";
        }
    }
}