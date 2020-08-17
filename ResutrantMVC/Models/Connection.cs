using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ResutrantMVC.Models
{
    public class Connection
    {

        //this is the model class that is used to set the getter setter of the class with the user name of password 
        // database connection with user name or password to validate the user name or password 
        public String Name { get; set; }
        public String Email { get; set; }
        public String contact { get; set; }
        public String Msg { get; set; }

        //global declaration of the variable 
        SqlConnection connection;
        String connection_String = "Data Source=DESKTOP-G2UGPMF\\SQLEXPRESS;Initial Catalog=ResturantSite;Integrated Security=True";
        SqlCommand command;



        //this method is used to insert the query in the database table that is used to store the record of the query
        public void send(String qry)
        {
            // passing the connection string to the conection class
            connection = new SqlConnection(connection_String);
            //open the connection 
            connection.Open();
            //passing the connection with the command relation 
            command = new SqlCommand(qry, connection);
            ////calling the method to execute the query 
            command.ExecuteNonQuery();
            //closing the connection 
            connection.Close();
        }



    }
}