using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_Category : System.Web.UI.Page
{
    public static string id = "";
    bool ss;
    DataSet ds = new DataSet();
    string s;
    string typess;
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.ll2();
        Master.houses();
        if (!IsPostBack)
        {
            getdata();
        }
    }
    public void getdata()
    {
        try
        {
            string q = "select * from House where id='" + Request.QueryString["id"] + "'";
            ds = new DataSet();
            ds = db.funGetDataSet(q);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtHouseNo.Text = ds.Tables[0].Rows[0]["HouseNo"].ToString();
                txtAdress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                txtStreet.Text = ds.Tables[0].Rows[0]["Street"].ToString();
                drpType.SelectedValue = ds.Tables[0].Rows[0]["Type"].ToString();
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
        string qs = "select * from House where HouseNo = '"+txtHouseNo.Text+"'";
        DataSet ds = new DataSet();
        ds = db.funGetDataSet(qs);

        //string qs1 = "select * from House where Address = '" + txtAdress.Text + "'";
        //DataSet ds1 = new DataSet();
        //ds1 = db.funGetDataSet(qs1);

        if (ds.Tables[0].Rows.Count > 0)
        {
            s += "HouseNo";
            ss = true;
        }
        //if (ds1.Tables[0].Rows.Count > 0)
        //{
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        s += ",Address";
        //    }
        //    else
        //    {
        //        s = "Address";
        //    }
        //    ss = true;
        //}
        
        if (ss == true)
        {
            Label1.Text = s + " already exists";
            return;
        }
            typess = drpType.SelectedItem.Text + "-" + txtHouseNo.Text;  
                if(txtAdress.Text == "")
            {
                txtAdress.Text = "N/A";
            }
                if(txtStreet.Text == "")
            {
                txtStreet.Text = "N/A";
            }
        string q = "insert into House (HouseNo,Address,Street,Type) values('"+typess+"','" + txtAdress.Text + "','" + txtStreet.Text + "','" + drpType.SelectedItem.Text + "')";
        db.insert(q);
        Label1.Text = "Data added successfully";
        clear();
        }
        else if (btn.Text == "Update")
        {
            string q = "Update House set HouseNo = '" + txtHouseNo.Text + "',Address = '" + txtAdress.Text + "',Street='" + txtStreet.Text + "',Type = '" + drpType.SelectedItem.Text + "' where Id = '" + Request.QueryString["Id"] + "'";
            db.insert(q);
            Label1.Text = "Data Updated successfully";
            clear();
        }
    }
    public void clear()
    {   
        txtHouseNo.Text = "";
        txtAdress.Text = "";
    } 
}