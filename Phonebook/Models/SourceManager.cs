using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Remotion.Linq.Clauses;

namespace Phonebook.Models
{
  class SourceManager : ActiveRecord
  {
    public static int perPage { get; } = 10;

    public List<PeopleModel> Get(int start, int take)
    {
      //List of phonebook records to be returned
      var listOfRecords = new List<PeopleModel>();

      _command.Parameters.Clear();

      //dopisac wyszukiwanie po nazwisku, jezeli index to pusty string
      _command.CommandText =
        "use Phonebook; with temp as (select *, row_number() over (order by FirstName, LastName, Email, Phone) as rownum from People) select rownum, * from temp where rownum between @StartId and @EndId;";

      var startIdParameter = new SqlParameter("@StartId", SqlDbType.Int) { Value = start };
      var endIdParameter = new SqlParameter("@EndId", SqlDbType.Int) { Value = start + take - 1 };

      _command.Parameters.Add(startIdParameter);
      _command.Parameters.Add(endIdParameter);

      Open();

      using (var reader = _command.ExecuteReader())
      {
        while (reader.Read())
        {

          listOfRecords.Add(
            new PeopleModel()
            {
              Id = (int)reader["Id"],
              FirstName = (string)reader["FirstName"],
              LastName = (string)reader["LastName"],
              Phone = (string)reader["Phone"],
              Email = (string)reader["Email"],
              Created = (DateTime)reader["Created"],
              Updated = (DateTime)reader["Updated"]
            }
          );
        }
      }

      Close();

      return listOfRecords;
    }

    public List<PeopleModel> Get2(int start, int take, string name)
    {
      //List of phonebook records to be returned
      var listOfRecords = new List<PeopleModel>();

      _command.Parameters.Clear();

      //dopisac wyszukiwanie po nazwisku, jezeli index to pusty string
      _command.CommandText =
        "use Phonebook; with temp as (select *, row_number() over (order by FirstName, LastName, Email, Phone) as rownum from People where LastName LIKE @RegExp) select rownum, * from temp where rownum between @StartId and @EndId;";

      var startIdParameter = new SqlParameter("@StartId", SqlDbType.Int) { Value = start };
      var endIdParameter = new SqlParameter("@EndId", SqlDbType.Int) { Value = start + take - 1 };
      var regExpParameter = new SqlParameter("RegExp",SqlDbType.NVarChar) {Value = "%"+name+"%"};

      _command.Parameters.Add(startIdParameter);
      _command.Parameters.Add(endIdParameter);
      _command.Parameters.Add(regExpParameter);

      Open();

      using (var reader = _command.ExecuteReader())
      {
        while (reader.Read())
        {

          listOfRecords.Add(
            new PeopleModel()
            {
              Id = (int)reader["Id"],
              FirstName = (string)reader["FirstName"],
              LastName = (string)reader["LastName"],
              Phone = (string)reader["Phone"],
              Email = (string)reader["Email"],
              Created = (DateTime)reader["Created"],
              Updated = (DateTime)reader["Updated"]
            }
          );
        }
      }

      Close();

      return listOfRecords;
    }

    public int GetNumberOfRecords()
    {
      _command.Parameters.Clear();

      _command.CommandText = "use Phonebook; select count(*) from People";

      Open();

      int numberOfRecords = (int)_command.ExecuteScalar();

      Close();

      return numberOfRecords;
    }

    public int GetNumberOfRecords2(string name)
    {
      _command.Parameters.Clear();

      _command.CommandText = "use Phonebook; select count(*) from People where LastName LIKE @RegExp";

      var regExpParameter = new SqlParameter("@RegExp",SqlDbType.NVarChar) {Value = "%"+name+"%"};

      _command.Parameters.Add(regExpParameter);

      Open();

      int numberOfRecords = (int)_command.ExecuteScalar();

      Close();

      return numberOfRecords;
    }

    public int Add(PeopleModel record)
    {
      _command.Parameters.Clear();

      _command.CommandText = "use Phonebook; INSERT INTO People(FirstName,LastName,Phone,Email,Created,Updated) " +
                             "VALUES (@FirstName,@LastName,@Phone,@Email,@Created,@Updated); select SCOPE_IDENTITY();";

      var paramList = new List<object>();

      var dt = DateTime.Now;

      paramList.Add(new SqlParameter("@FirstName", SqlDbType.NVarChar) { Value = record.FirstName });
      paramList.Add(new SqlParameter("@LastName", SqlDbType.NVarChar) { Value = record.LastName });
      paramList.Add(new SqlParameter("@Phone", SqlDbType.NVarChar) { Value = record.Phone });
      paramList.Add(new SqlParameter("@Email", SqlDbType.NVarChar) { Value = record.Email });
      paramList.Add(new SqlParameter("@Created", SqlDbType.DateTime2) { Value = dt });
      paramList.Add(new SqlParameter("@Updated", SqlDbType.DateTime2) { Value = dt });

      _command.Parameters.AddRange(paramList.ToArray());

      Open();

      var newId = Convert.ToInt16(_command.ExecuteScalar());

      Close();

      return newId;

    }

    public PeopleModel GetById(int id)
    {
      _command.Parameters.Clear();

      _command.CommandText = "use Phonebook; select * from People where Id = @Id;";

      var idParameter = new SqlParameter("@Id", SqlDbType.Int) { Value = id };

      _command.Parameters.Add(idParameter);

      Open();

      var reader = _command.ExecuteReader();
      reader.Read();

      var result = new PeopleModel()
      {
        Id = (int)reader["Id"],
        FirstName = (string)reader["FirstName"],
        LastName = (string)reader["LastName"],
        Phone = (string)reader["Phone"],
        Email = (string)reader["Email"],
        Created = (DateTime)reader["Created"],
        Updated = (DateTime)reader["Updated"]
      };

      Close();

      return result;
    }

    public void Update(PeopleModel record)
    {
      _command.Parameters.Clear();

      _command.CommandText = "use Phonebook; UPDATE People " +
                             "SET FirstName = @FirstName, LastName = @LastName, " +
                             "Phone = @Phone, Email = @Email, " +
                             "Created = @Created, Updated = @Updated " +
                             "WHERE Id=@Id;";

      var paramList = new List<object>();

      paramList.Add(new SqlParameter("@Id", SqlDbType.Int) { Value = record.Id });
      paramList.Add(new SqlParameter("@FirstName", SqlDbType.NVarChar) { Value = record.FirstName });
      paramList.Add(new SqlParameter("@LastName", SqlDbType.NVarChar) { Value = record.LastName });
      paramList.Add(new SqlParameter("@Phone", SqlDbType.NVarChar) { Value = record.Phone });
      paramList.Add(new SqlParameter("@Email", SqlDbType.NVarChar) { Value = record.Email });
      paramList.Add(new SqlParameter("@Created", SqlDbType.DateTime2) { Value = record.Created });
      paramList.Add(new SqlParameter("@Updated", SqlDbType.DateTime2) { Value = DateTime.Now });

      _command.Parameters.AddRange(paramList.ToArray());

      Open();

      _command.ExecuteNonQuery();

      Close();
    }

    public void Remove(int id)
    {
      _command.Parameters.Clear();

      _command.CommandText = "use Phonebook; delete from People where Id=@Id;";

      var idParameter = new SqlParameter("@Id", SqlDbType.Int) { Value = id };

      _command.Parameters.Add(idParameter);

      Open();

      _command.ExecuteReader();

      Close();
    }

    public List<PeopleModel> Search(string lastName)
    {
      _command.Parameters.Clear();

      //List of found records to be returned
      var listOfRecords = new List<PeopleModel>();

      var searchString = "%" + lastName + "%";

      _command.CommandText = "use Phonebook; select * from People where LastName LIKE @searchString;";

      var searchStringParameter = new SqlParameter("@searchString", SqlDbType.NVarChar) { Value = searchString };

      _command.Parameters.Add(searchStringParameter);

      Open();

      using (var reader = _command.ExecuteReader())
      {
        while (reader.Read())
        {

          listOfRecords.Add(
            new PeopleModel()
            {
              Id = (int)reader["Id"],
              FirstName = (string)reader["FirstName"],
              LastName = (string)reader["LastName"],
              Phone = (string)reader["Phone"],
              Email = (string)reader["Email"],
              Created = (DateTime)reader["Created"],
              Updated = (DateTime)reader["Updated"]
            }
          );
        }
      }

      Close();

      return listOfRecords;
    }
  }
}
