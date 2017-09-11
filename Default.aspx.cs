using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preview_dotnet_templates_registration_Form_index : System.Web.UI.Page
{
    double propertyTypeCharge = 300;
    double bedRoomCharge = 100;
    double storage = 150;
    double packing = 200;

    protected void Page_Load(object sender, EventArgs e)
    {
        lblQuote.Text = "Quote Date:" + " " + DateTime.Now.ToString();
      

    }



    protected void btnGetAQUOTE_Click(object sender, EventArgs e)
    {
       
        DateTime today = DateTime.Now;
        DateTime todayplusSeven = today.AddDays(7);

        if (dlistFromPropertyType.SelectedValue == "Flat" && RadioButtonListBedFrom.SelectedIndex == 0)
        {
            propertyTypeCharge = 300;
        }
        else if (dlistFromPropertyType.SelectedValue == "Flat" && RadioButtonListBedFrom.SelectedIndex == 1)
        {
            propertyTypeCharge += 25;
        }
        else if (dlistFromPropertyType.SelectedValue == "Flat" && RadioButtonListBedFrom.SelectedIndex == 2)
        {
            propertyTypeCharge += 45;
        }
        else if (dlistFromPropertyType.SelectedValue == "Flat" && RadioButtonListBedFrom.SelectedIndex == 3)
        {
            propertyTypeCharge += 50;
        }

        if (dlistFromPropertyType.SelectedValue == "Semi Detached" && RadioButtonListBedFrom.SelectedIndex == 0)
        {
            propertyTypeCharge = 225;
        }
        else if (dlistFromPropertyType.SelectedValue == "Semi Detached" && RadioButtonListBedFrom.SelectedIndex == 1)
        {
            propertyTypeCharge += 40;
        }
        else if (dlistFromPropertyType.SelectedValue == "Semi Detached" && RadioButtonListBedFrom.SelectedIndex == 2)
        {
            propertyTypeCharge += 55;
        }
        else if (dlistFromPropertyType.SelectedValue == "Semi Detached" && RadioButtonListBedFrom.SelectedIndex == 3)
        {
            propertyTypeCharge += 60;
        }

        if (dlistFromPropertyType.SelectedValue == "Detached" && RadioButtonListBedFrom.SelectedIndex == 0)
        {
            propertyTypeCharge = 225;
        }
        else if (dlistFromPropertyType.SelectedValue == "Detached" && RadioButtonListBedFrom.SelectedIndex == 1)
        {
            propertyTypeCharge += 40;
        }
        else if (dlistFromPropertyType.SelectedValue == "Detached" && RadioButtonListBedFrom.SelectedIndex == 2)
        {
            propertyTypeCharge += 55;
        }
        else if (dlistFromPropertyType.SelectedValue == "Detached" && RadioButtonListBedFrom.SelectedIndex == 3)
        {
            propertyTypeCharge += 60;
        }

        if (dlistFromPropertyType.SelectedValue == "Bungalow" && RadioButtonListBedFrom.SelectedIndex == 0)
        {
            propertyTypeCharge = 215;
        }
        else if (dlistFromPropertyType.SelectedValue == "Bungalow" && RadioButtonListBedFrom.SelectedIndex == 1)
        {
            propertyTypeCharge += 35;
        }
        else if (dlistFromPropertyType.SelectedValue == "Bungalow" && RadioButtonListBedFrom.SelectedIndex == 2)
        {
            propertyTypeCharge += 40;
        }
        else if (dlistFromPropertyType.SelectedValue == "Bungalow" && RadioButtonListBedFrom.SelectedIndex == 3)
        {
            propertyTypeCharge += 50;
        }

        //Services Required

        if (RadioButtonListServices.SelectedValue == "full")
        {
            propertyTypeCharge += packing;
            txtPacking.Text = "Packing:" +" " + "£" + packing;
        }
        else if (RadioButtonListServices.SelectedValue == "breakable")
        {
            propertyTypeCharge += 100;
            txtPacking.Text = "Packing:" + " " + "£" + packing;
        }
        else if (RadioButtonListServices.SelectedValue == "removal")
        {
            propertyTypeCharge += 0;
        }

        if (CheckBoxListStorage.SelectedValue == "storage")
        {
            propertyTypeCharge += storage;
            txtStorage.Text = "Storage:" + " " + "£" + storage;
        }

        txtResult.Text = "Total Cost:" +" " + "£" + propertyTypeCharge;
        //txtStorage.Text = "£" + storage;
        //txtPacking.Text = "£" + packing;
        lblQuote.Text = ("Quote Date:" + " " + today.ToString() + "<br/>" + "<br/>" +
                                "Quote Price Valid Until:" + " " + todayplusSeven.ToShortDateString() + "<br/>" +
                                "______________________" + "<br/>" +
                                "Name: " + "&nbsp&nbsp;" + txtName.Text + "<br/>" +
                             "Email:" + "&nbsp&nbsp;" + txtEmail.Text + "<br/>" + "Phone:" + "&nbsp&nbsp;" + txtPhone.Text + "<br/>" +
                                "Moving From:" + "&nbsp&nbsp;" + txtMoveFrom.Text + "<br/>" + "Property Type:" + "&nbsp&nbsp;" +
                                    dlistFromPropertyType.SelectedValue + "<br/>" + "Number of Bedrooms:" + "&nbsp&nbsp;" +
                                    RadioButtonListBedFrom.SelectedItem + "<br/>" +
                                    "Moving To:" + "&nbsp&nbsp;" + txtMovingTo.Text + "<br/>" +
                                    "Property Type:" + "&nbsp&nbsp;" + dlistToPPropertyType.SelectedValue + "<br/>" +
                                    "Number of Bedrooms:" + "&nbsp&nbsp;" + RadioButtonListBedTo.SelectedItem + "<br/>" +
                                    "Moving date:" + "&nbsp&nbsp;" + Calendar1.SelectedDate.ToShortDateString() + "<br/>" + "______________________" + "<br/>"
                                    );
        
       

    }

    

}




