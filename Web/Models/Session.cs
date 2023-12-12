using System;
using System.Collections.Generic;

namespace Web.Models;

public partial class Session
{
    public long IdSession { get; set; }

    public DateTime TimeStart { get; set; }

    public DateTime TimeEnd { get; set; }

    public long? FkSessionPhone { get; set; }

    public long? FkSessionActivity { get; set; }

    public virtual ActivityType? FkSessionActivityNavigation { get; set; }

    public virtual Phone? FkSessionPhoneNavigation { get; set; }
}
