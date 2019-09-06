-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Athlete_Events" (
    "id" INT   NOT NULL,
    "team" VARCHAR   NOT NULL,
    "country_id" VARCHAR   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "season" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "sport" VARCHAR   NOT NULL,
    "event" VARCHAR   NOT NULL,
    "medal" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Athlete_Events" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Country_SES" (
    "id" INT   NOT NULL,
    "country_id" VARCHAR   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "ses" FLOAT   NOT NULL,
    "gdppc" FLOAT   NOT NULL,
    CONSTRAINT "pk_Country_SES" PRIMARY KEY (
        "id"
     )
);

