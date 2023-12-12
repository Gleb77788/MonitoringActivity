using Microsoft.EntityFrameworkCore;

namespace Web.Models;

public partial class AccelerContext : DbContext
{
    public AccelerContext()
    {
    }

    public AccelerContext(DbContextOptions<AccelerContext> options)
        : base(options)
    {
    }

    public virtual DbSet<ActivityType> ActivityTypes { get; set; }

    public virtual DbSet<Measurement> Measurements { get; set; }

    public virtual DbSet<Person> People { get; set; }

    public virtual DbSet<Phone> Phones { get; set; }

    public virtual DbSet<Session> Sessions { get; set; }

    public virtual DbSet<Company> Companies { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=acceler;Username=postgres;Password=1234");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<ActivityType>(entity =>
        {
            entity.HasKey(e => e.IdActivityTypes).HasName("Activity_types_pkey");

            entity.ToTable("Activity_types");

            entity.HasIndex(e => e.IdActivityTypes, "Activity_id_key").IsUnique();

            entity.Property(e => e.IdActivityTypes)
                .UseIdentityAlwaysColumn()
                .HasColumnName("id_activity_types");
            entity.Property(e => e.NameActivity)
                .HasMaxLength(50)
                .HasColumnName("name_activity");
        });

        modelBuilder.Entity<Measurement>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("Measurement");

            entity.Property(e => e.Ax).HasColumnName("ax");
            entity.Property(e => e.Ay).HasColumnName("ay");
            entity.Property(e => e.Az).HasColumnName("az");
            entity.Property(e => e.FkMeasurementSession).HasColumnName("fk_measurement_session");
            entity.Property(e => e.IdMeasurement)
                .ValueGeneratedOnAdd()
                .UseIdentityAlwaysColumn()
                .HasColumnName("id_measurement");

            entity.HasOne(d => d.FkMeasurementSessionNavigation).WithMany()
                .HasForeignKey(d => d.FkMeasurementSession)
                .HasConstraintName("Measurement_fk_measurement_session_fkey");
        });

        modelBuilder.Entity<Company>(entity =>
        {
            entity.HasKey(e => e.IdCompany).HasName("Company_pkey");

            entity.ToTable("Company");

            entity.HasIndex(e => e.IdCompany, "Company_id_key").IsUnique();

            entity.Property(e => e.IdCompany)
                .UseIdentityAlwaysColumn()
                .HasColumnName("id_company");
        });

        modelBuilder.Entity<Person>(entity =>
        {
            entity.HasKey(e => e.IdPerson).HasName("Person_pkey");

            entity.ToTable("Person");

            entity.HasIndex(e => e.IdPerson, "Person_id_key").IsUnique();

            entity.Property(e => e.IdPerson)
                .UseIdentityAlwaysColumn()
                .HasColumnName("id_person");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .HasColumnName("email");
            entity.Property(e => e.Firstname)
                .HasMaxLength(50)
                .HasColumnName("firstname");
            entity.Property(e => e.Lastname)
                .HasMaxLength(50)
                .HasColumnName("lastname");
        });

        modelBuilder.Entity<Phone>(entity =>
        {
            entity.HasKey(e => e.IdPhone).HasName("Phone_pkey");

            entity.ToTable("Phone");

            entity.HasIndex(e => e.IdPhone, "Phone_id_key").IsUnique();

            entity.Property(e => e.IdPhone)
                .UseIdentityAlwaysColumn()
                .HasColumnName("id_phone");
            entity.Property(e => e.FkPhonePerson).HasColumnName("fk_phone_person");
            entity.Property(e => e.NumberPhone).HasColumnName("number_phone");
            entity.Property(e => e.StatusPhone)
                .HasMaxLength(100)
                .HasColumnName("status_phone");

            entity.HasOne(d => d.FkPhonePersonNavigation).WithMany(p => p.Phones)
                .HasForeignKey(d => d.FkPhonePerson)
                .HasConstraintName("Phone_fk_phone_person_fkey");
        });

        modelBuilder.Entity<Session>(entity =>
        {
            entity.HasKey(e => e.IdSession).HasName("Session_pkey");

            entity.ToTable("Session");

            entity.Property(e => e.IdSession)
                .UseIdentityAlwaysColumn()
                .HasColumnName("id_session");
            entity.Property(e => e.FkSessionActivity).HasColumnName("fk_session_activity");
            entity.Property(e => e.FkSessionPhone).HasColumnName("fk_session_phone");
            entity.Property(e => e.TimeEnd)
                .HasColumnType("timestamp without time zone")
                .HasColumnName("time_end");
            entity.Property(e => e.TimeStart)
                .HasColumnType("timestamp without time zone")
                .HasColumnName("time_start");

            entity.HasOne(d => d.FkSessionActivityNavigation).WithMany(p => p.Sessions)
                .HasForeignKey(d => d.FkSessionActivity)
                .HasConstraintName("Session_fk_session_activity_fkey");

            entity.HasOne(d => d.FkSessionPhoneNavigation).WithMany(p => p.Sessions)
                .HasForeignKey(d => d.FkSessionPhone)
                .HasConstraintName("Session_fk_session_phone_fkey");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
