using System;
using System.Collections.Generic;
using Web.Models;

namespace Web;

public partial class Measurement
{
    public long IdMeasurement { get; set; }

    public float Ax { get; set; }

    public float Ay { get; set; }

    public float Az { get; set; }

    public long? FkMeasurementSession { get; set; }

    public virtual Session? FkMeasurementSessionNavigation { get; set; }
}
