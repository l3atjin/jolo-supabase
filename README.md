# Jolo Backend Supabase Environment
## Prerequisites
* Docker
* git
* [Supabase CLI](https://supabase.com/docs/guides/cli)

## How to run locally
Clone this repository and from within its root directory, run:

`$ supabase start`

The Supabase CLI should start pulling necessary Docker images, perform the PostgreSQL migrations defined in `supabase/migrations` and also populate the database with some test data by running `supabase/seed.sql`.

## Adding new migrations

To add new migrations to the database, run

`$ supabase migration new <migration_name>`

This will generate an empty SQL script in `supabase/migrations`. Add the necessary table changes in this file, and run

`$ supabase db reset`

to restart Supabase. As before, every migration, including `<migration_name>` will run.

## Generating TypeScript Types
Run

`$ supabase gen types typescript --local > supabase.ts`

and copy the generated files to a TypeScript project.

## Services

* The Supabase Studio web interface is available on `http://localhost:54323`.
* The PostgreSQL database is running on `postgresql://postgres:postgres@localhost:54322/postgres`
* The auto-generated REST API is available on `http://localhost:54321`