using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rejestracja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void zajerestrujButton_Click(object sender, EventArgs e)
    {
        string login = LoginLabel.Text;
        string haslo = HasloLabel.Text;
        string email = EmailLabel.Text;
        SqlDataSourceKonto.Insert();
        Response.Redirect("~/");

    }

    
}