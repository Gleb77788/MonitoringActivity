using System;
using System.Collections.Generic;

namespace Web.Models;

public partial class Person
{
    public long IdPerson { get; set; }

    public string Firstname { get; set; } = null!;

    public string Lastname { get; set; } = null!;

    public string Email { get; set; } = null!;

    public virtual ICollection<Phone> Phones { get; set; } = new List<Phone>();
}
