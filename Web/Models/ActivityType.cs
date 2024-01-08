using System;
using System.Collections.Generic;

namespace Web.Models;

public partial class TypeOfActivities
{
    public long IdActivityTypes { get; set; }

    public string NameActivity { get; set; } = null!;

    public virtual ICollection<Session> Sessions { get; set; } = new List<Session>();
}
