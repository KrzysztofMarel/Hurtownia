using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    Boolean wrongData;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!wrongData)
        {
            alertPanel.Visible = false;
            wrongData = false;
        }
    }

    protected void zalogujButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hurtowniaConnectionString1"].ConnectionString);
        SqlCommand command = new SqlCommand("SELECT id_konto, nazwa_konta, rodzaj_konta FROM konto WHERE nazwa_konta = @login AND haslo = @password", conn);

        command.Parameters.AddWithValue("@login", loginTextBox.Text);
        command.Parameters.AddWithValue("@password", hasloTextBox.Text);

        try
        {
            conn.Open();
            if (command.ExecuteScalar() != null)
            {
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Session["id"] = reader[0];
                        Session["login"] = reader[1];
                        Session["type"] = reader[2];
                    }
                }

                Response.Redirect("~/");
            }
            else
            {
                wrongData = true;
            }
        }
        catch (Exception ex)
        {
            conn.Close();
        }
    }
}