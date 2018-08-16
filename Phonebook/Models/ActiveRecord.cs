using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Phonebook.Models
{
  abstract class ActiveRecord
  {
    public int ID { get; protected set; }

    protected SqlConnection _connection = new SqlConnection("Integrated Security=SSPI;" +
                                                            "Initial Catalog=Pharmacy;" +
                                                            "Data Source=.\\SQLEXPRESS01;");
    protected SqlCommand _command = new SqlCommand();


    protected virtual void Open()
    {
      _connection.Open();
      _command.Connection = _connection;
    }

    protected virtual void Close()
    {
      _connection.Close();
    }
  }
}
