using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Activity_types",
                columns: table => new
                {
                    id_activity_types = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityAlwaysColumn),
                    name_activity = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("Activity_types_pkey", x => x.id_activity_types);
                });

            migrationBuilder.CreateTable(
                name: "Person",
                columns: table => new
                {
                    id_person = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityAlwaysColumn),
                    firstname = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: false),
                    lastname = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: false),
                    email = table.Column<string>(type: "character varying(100)", maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("Person_pkey", x => x.id_person);
                });

            migrationBuilder.CreateTable(
                name: "Phone",
                columns: table => new
                {
                    id_phone = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityAlwaysColumn),
                    number_phone = table.Column<long>(type: "bigint", nullable: false),
                    status_phone = table.Column<string>(type: "character varying(100)", maxLength: 100, nullable: false),
                    fk_phone_person = table.Column<long>(type: "bigint", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("Phone_pkey", x => x.id_phone);
                    table.ForeignKey(
                        name: "Phone_fk_phone_person_fkey",
                        column: x => x.fk_phone_person,
                        principalTable: "Person",
                        principalColumn: "id_person");
                });

            migrationBuilder.CreateTable(
                name: "Session",
                columns: table => new
                {
                    id_session = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityAlwaysColumn),
                    time_start = table.Column<DateTime>(type: "timestamp without time zone", nullable: false),
                    time_end = table.Column<DateTime>(type: "timestamp without time zone", nullable: false),
                    fk_session_phone = table.Column<long>(type: "bigint", nullable: true),
                    fk_session_activity = table.Column<long>(type: "bigint", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("Session_pkey", x => x.id_session);
                    table.ForeignKey(
                        name: "Session_fk_session_activity_fkey",
                        column: x => x.fk_session_activity,
                        principalTable: "Activity_types",
                        principalColumn: "id_activity_types");
                    table.ForeignKey(
                        name: "Session_fk_session_phone_fkey",
                        column: x => x.fk_session_phone,
                        principalTable: "Phone",
                        principalColumn: "id_phone");
                });

            migrationBuilder.CreateTable(
                name: "Measurement",
                columns: table => new
                {
                    id_measurement = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityAlwaysColumn),
                    ax = table.Column<float>(type: "real", nullable: false),
                    ay = table.Column<float>(type: "real", nullable: false),
                    az = table.Column<float>(type: "real", nullable: false),
                    fk_measurement_session = table.Column<long>(type: "bigint", nullable: true)
                },
                constraints: table =>
                {
                    table.ForeignKey(
                        name: "Measurement_fk_measurement_session_fkey",
                        column: x => x.fk_measurement_session,
                        principalTable: "Session",
                        principalColumn: "id_session");
                });

            migrationBuilder.CreateIndex(
                name: "Activity_id_key",
                table: "Activity_types",
                column: "id_activity_types",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Measurement_fk_measurement_session",
                table: "Measurement",
                column: "fk_measurement_session");

            migrationBuilder.CreateIndex(
                name: "Person_id_key",
                table: "Person",
                column: "id_person",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Phone_fk_phone_person",
                table: "Phone",
                column: "fk_phone_person");

            migrationBuilder.CreateIndex(
                name: "Phone_id_key",
                table: "Phone",
                column: "id_phone",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Session_fk_session_activity",
                table: "Session",
                column: "fk_session_activity");

            migrationBuilder.CreateIndex(
                name: "IX_Session_fk_session_phone",
                table: "Session",
                column: "fk_session_phone");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Measurement");

            migrationBuilder.DropTable(
                name: "Session");

            migrationBuilder.DropTable(
                name: "Activity_types");

            migrationBuilder.DropTable(
                name: "Phone");

            migrationBuilder.DropTable(
                name: "Person");
        }
    }
}
