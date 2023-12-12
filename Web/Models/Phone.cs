using System;
using System.Collections.Generic;

namespace Web.Models;

public partial class Phone
{
    public long IdPhone { get; set; }

    public long NumberPhone { get; set; }

    public string StatusPhone { get; set; } = null!;

    public long? FkPhonePerson { get; set; }

    public virtual Person? FkPhonePersonNavigation { get; set; }

    public virtual ICollection<Session> Sessions { get; set; } = new List<Session>();
}
