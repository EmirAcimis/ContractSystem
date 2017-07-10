using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Contract
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
        {
            int count = 0;
            try
            {
                string strConnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                SqlConnection sqlConnection = new SqlConnection(strConnection);
                sqlConnection.Open();
                string myQuery = "SELECT * FROM UserTable WHERE UserName= '" + Login1.UserName + "' AND UserPassword = '" + Login1.Password + " ' ";
                SqlCommand cmd = new SqlCommand(myQuery, sqlConnection);
                if (cmd.ExecuteScalar() != null)
                {
                    count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                }
                else
                {
                    Login1.FailureText.ToString();
                }

                if (count == 1)
                {
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Login1.FailureText.ToString();
                }
            }
            catch (SqlException ex)
            {
                Response.Write("There is an error on connection or sql query");
                ex.Errors.ToString();
            }

        }
    }
}





   
     
       
    

