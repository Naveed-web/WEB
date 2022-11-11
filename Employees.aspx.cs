using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Employees : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.ll32();
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
        string q = "Select * from Employees where Id = '" + Request.QueryString["id"] + "'";
        DataSet ds = new DataSet();
        ds = db.funGetDataSet(q);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            txtGender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
            txtDOB.Text = ds.Tables[0].Rows[0]["DOB"].ToString();
            txtAge.Text = ds.Tables[0].Rows[0]["Age"].ToString();
            txtContactNo.Text = ds.Tables[0].Rows[0]["ContactNo"].ToString();
            txtDesignation.Text = ds.Tables[0].Rows[0]["Designation"].ToString();
            txtBloodGroup.Text = ds.Tables[0].Rows[0]["BloodGroup"].ToString();          
            txtCNICNO.Text = ds.Tables[0].Rows[0]["CNIC"].ToString();
            btn.Text = "Update";
        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        if (btn.Text == "Save")
        {
              string q = "insert into Employees(Name,Gender,DOB,Age,ContactNo,Designation,BloodGroup,CNIC) values('" + txtName.Text + "','" + txtGender.Text + "','" + txtDOB.Text + "','" + txtAge.Text + "','" + txtContactNo.Text + "','" + txtDesignation.Text + "','" + txtBloodGroup.Text + "','" + txtCNICNO.Text + "')";
              db.funGetDataSet(q);
              q = "Select Max(Id)Id from  Employees";
              ds = db.funGetDataSet(q);       
        }
        else
        {
            string q = "Update Employees set Name = '" + txtName.Text + "',Gender = '" + txtGender.Text + "',DOB = '" + txtDOB.Text + "',Age  = '" + txtAge.Text + "',ContactNo  = '" + txtContactNo.Text + "',Designation = '" + txtDesignation.Text + "',BloodGroup = '" + txtBloodGroup.Text + "', CNIC = '" + txtCNICNO.Text + "'  where Id = '" + Request.QueryString["Id"] + "' ";
            db.funGetDataSet(q);
        }
    }
    protected void txtDOB_TextChanged(object sender, EventArgs e)
    {
        DateTime dt = Convert.ToDateTime(txtDOB.Text);
        DateTime dt1 = Convert.ToDateTime(DateTime.Now);

        var age = dt1.Year - dt.Year;
        var month = dt.Month - dt1.Month;
        if (month <= 0)
        {
            txtAge.Text = age.ToString();
        }
        else
        {
            age--;
            txtAge.Text = age.ToString();
        }
    }   
}