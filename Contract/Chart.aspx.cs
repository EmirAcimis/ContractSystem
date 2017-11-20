using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Contract
{
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {
            string strConnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ContractDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection sqlConnection = new SqlConnection(strConnection);

            int counter = 0; int year = 2017; string temp = "2017";

            while (counter < 5)
            {

                counter++;
                sqlConnection.Open();
                DataTable dt = new DataTable();

                string myQuery1 = "Select * from ContractTable where year(ExpiryDate) =' " + temp + " ' ";



                SqlCommand cmd1 = new SqlCommand(myQuery1, sqlConnection);


                SqlDataReader reader1;

                SqlDataAdapter adapter1 = new SqlDataAdapter();

                //Open the connection to db

                adapter1.SelectCommand = new SqlCommand(myQuery1, sqlConnection);

                //execute the query


                //dizi yerine generic koleksiyon
                List<int> liste = new List<int>();
                int count1 = 0;

                reader1 = cmd1.ExecuteReader();
                while (reader1.Read()) { count1++; }
                sqlConnection.Close();


                //Chart1.Series["Series1"].Points.AddXY(temp,count1);
                Chart2.Series["Series1"].Points.AddXY(temp, count1);
                Chart1.Series["Series1"].Points.AddXY(temp, count1);

                year++;
                temp = Convert.ToString(year);




            }


        }

        protected void Chart2_Load(object sender, EventArgs e)
        {

        }
    }
}