using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Phonebook.Models
{
  public class PeopleModel
  {
    public int Id { get; set; }

    [Required]
    [MinLength(2)]
    [MaxLength(30)]
    [DisplayName("First Name")]
    public string FirstName { get; set; }

    [Required]
    [MinLength(2)]
    [MaxLength(30)]
    [DisplayName("Last Name")]
    public string LastName { get; set; }

    [Required]
    [Phone]
    [MaxLength(20)]
    [DisplayName("Phone")]
    public string Phone { get; set; }

    [Required]
    [EmailAddress]
    public string Email { get; set; }
    
    [DisplayName("Create Date")]
    public DateTime Created { get; set; }
    
    [DisplayName("Update Date")]
    public DateTime Updated { get; set; }
  }
}
