using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Allottee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.ll17();
        Master.Allottee();
        if (!IsPostBack)
        {
            if (Request.QueryString["Id"] != null)
            {
                getdata();
            }
        }
    }
    public void getdata()
    {
        string a = "select * from Allottee where Id = '" + Request.QueryString["Id"] + "'";
        DataSet ds = new DataSet();
        ds = db.funGetDataSet(a);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DrpHouseNo.SelectedValue = ds.Tables[0].Rows[0]["HouseId"].ToString();
            txtName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            textbox.Text = ds.Tables[0].Rows[0]["CNIC"].ToString();
            DrpGender.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
            txtContactNo.Text = ds.Tables[0].Rows[0]["ContactNo"].ToString();
            DrpCurrentOwnerShip.SelectedValue = ds.Tables[0].Rows[0]["CurrentOwnerShip"].ToString();
            txtResiding.Text = ds.Tables[0].Rows[0]["Residing"].ToString();
            DateTime s = Convert.ToDateTime(ds.Tables[0].Rows[0]["Date"].ToString());
            txtDate.Text = s.ToString("yyyy-MM-dd");
            btn.Text = "Update";
        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        try
        {
            if (btn.Text == "Save")
            {
                string q = "select max(date)Date from Allottee where Allottee.HouseId = '" + DrpHouseNo.SelectedValue + "'";
                DataSet ds = new DataSet();
                ds = db.funGetDataSet(q);
                if (ds.Tables[0].Rows[0]["Date"] is DBNull)
                {
                    string q2 = "insert into Allottee(HouseId,Name,Date,Gender,ContactNo,CurrentOwnerShip,CNIC,Residing) values('" + DrpHouseNo.SelectedValue + "','" + txtName.Text + "','" + txtDate.Text + "','" + DrpGender.SelectedValue + "','" + txtContactNo.Text + "','" + DrpCurrentOwnerShip.SelectedValue + "','" + textbox.Text + "','"+txtResiding.Text+"')";
                    DataSet ds1 = new DataSet();
                    ds1 = db.funGetDataSet(q2);
                    Label1.Text = "Data Added Successfully";
                }
                else
                {

                    DateTime dt = Convert.ToDateTime(ds.Tables[0].Rows[0]["Date"].ToString());
                    string s = dt.ToString("yyyy-MM-dd");
                    DateTime dt1 = Convert.ToDateTime(txtDate.Text);
                    if (dt1 > dt)
                    {
                        string q2 = "insert into Allottee(HouseId,Name,Date,Gender,ContactNo,CurrentOwnerShip,CNIC,Residing) values('" + DrpHouseNo.SelectedValue + "','" + txtName.Text + "','" + txtDate.Text + "','" + DrpGender.SelectedValue + "','" + txtContactNo.Text + "','" + DrpCurrentOwnerShip.SelectedValue + "','" + textbox.Text + "','" + txtResiding.Text + "')";
                        DataSet ds1 = new DataSet();
                        ds1 = db.funGetDataSet(q2);
                        Label1.Text = "Data Added Successfully";
                    }
                    else
                    {
                        Label1.Text = "Please Select The Date Greater Than " + s;
                    }
                }
            }
            else
            {
                string q2 = "update Allottee set HouseId = '" + DrpHouseNo.SelectedValue + "' ,Name = '" + txtName.Text + "' ,CNIC = '" + textbox.Text + "',ContactNo = '" + txtContactNo.Text + "',CurrentOwnerShip = '" + DrpCurrentOwnerShip.SelectedValue + "',Date = '" + txtDate.Text + "',Gender = '" + DrpGender.SelectedValue + "',Residing = '"+txtResiding.Text+"' where Id = '" + Request.QueryString["Id"] + "'";
                DataSet ds1 = new DataSet();
                ds1 = db.funGetDataSet(q2);
                Label1.Text = "Data Updated Successfully";
            }
        }
        catch (Exception) { }
    }
}
