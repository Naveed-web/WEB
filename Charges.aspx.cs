using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_Category : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    string id;
    string s;
    bool ss;
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.expenses();
        Master.ll4();       
       if (!IsPostBack)
        {
            getdata();
        }
    }
    public void getdata()
    {
        try
        {
            string q = "select * from Expenses where id='" + Request.QueryString["id"] + "'";
            ds = new DataSet();
            ds = db.funGetDataSet(q);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtHead.Text = ds.Tables[0].Rows[0]["Head"].ToString();
                txtAmount.Text = ds.Tables[0].Rows[0]["Amount"].ToString();
                DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["Type"].ToString();
                btn.Text = "Update";
            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        if (btn.Text == "Save")
        {
        string qs = "select * from Expenses where Head = '"+txtHead.Text+"' and Type = '"+DropDownList1.SelectedValue+"'";
        DataSet ds = new DataSet();
        ds = db.funGetDataSet(qs);

        //string qs1 = "select * from Expenses where Amount = '" + txtAmount.Text + "'";
        //DataSet ds1 = new DataSet();
        //ds1 = db.funGetDataSet(qs1);

        //string qs2 = "select * from Expenses where Type = '" + DropDownList1.SelectedValue + "'";
        //DataSet ds2 = new DataSet();
        //ds2 = db.funGetDataSet(qs2);

        if (ds.Tables[0].Rows.Count > 0)
        {
            s += "Head";
            ss = true;
        }
        //if (ds1.Tables[0].Rows.Count > 0)
        //{
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        s += ",Amount";
        //    }
        //    else
        //    {
        //        s = "Amount";
        //    }
        //    ss = true;
        //}
        //if (ds2.Tables[0].Rows.Count > 0)
        //{
        //    if (ds1.Tables[0].Rows.Count > 0 || ds.Tables[0].Rows.Count > 0)
        //    {
        //        s += ",Type";
        //    }
        //    else
        //    {
        //        s = "Type";
        //    }
        //    ss = true;
        //}
        
        if (ss == true)
        {
            Label1.Text = s + " already exists";
            return;
        }
        string q = "insert into Expenses (Head,Amount,Type) values('" + txtHead.Text + "','" + txtAmount.Text + "','" + DropDownList1.SelectedValue + "')";
        db.insert(q);
        Label1.Text = "Data added successfully";
        clear();

        }
        else if (btn.Text == "Update")
        {
            string q = "Update Expenses set Head = '" + txtHead.Text + "',Amount = '" + txtAmount.Text + "',Type = '" + DropDownList1.SelectedValue + "' where Id = '" + Request.QueryString["Id"] + "'";
            db.insert(q);
            Label1.Text = "Data Updated successfully";
            clear();
        }
    }
    public void clear()
    {
        txtHead.Text = "";
        txtAmount.Text = "";
        //txtType.Text = "";
    } 
}