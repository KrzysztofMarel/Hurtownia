using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            loginMultiView.SetActiveView(niezalogowanyView);
        }
        else
        {
            loginMultiView.SetActiveView(zalogowanyView);
            wylogujButton.Text = "Wyloguj (" + Session["login"] + ")";
        }
    }


    protected void zalogujButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }

    protected void zajerestrujButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Rejestracja.aspx");
    }

    protected void wylogujButton_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Session["login"] = null;
        Session["type"] = null;
    }
}
