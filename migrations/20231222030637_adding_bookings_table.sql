-- dropping requests tables 
drop policy "Enable insert for authenticated users only" on "public"."driver_requests";

alter table "public"."driver_requests" drop constraint "driver_requests_post_id_fkey";

alter table "public"."driver_requests" drop constraint "driver_requests_rider_id_fkey";

alter table "public"."driver_requests" drop constraint "unique_request_user_constraint";

alter table "public"."rider_requests" drop constraint "rider_requests_driver_id _fkey";

alter table "public"."rider_requests" drop constraint "rider_requests_post_id_fkey";

alter table "public"."driver_requests" drop constraint "driver_requests_pkey";

alter table "public"."rider_requests" drop constraint "rider_requests_pkey";

drop index if exists "public"."driver_requests_pkey";

drop index if exists "public"."rider_requests_pkey";

drop index if exists "public"."unique_request_user_constraint";

drop table "public"."driver_requests";

drop table "public"."rider_requests";


create table bookings (
  id uuid primary key default uuid_generate_v4(),
  driver_post_id uuid references driver_posts (id) on delete cascade not null,
  rider_id uuid references profiles (id) on delete cascade not null,
  created_at timestamp with time zone default now(),
  status trip_status
);

alter table bookings enable row level security;

CREATE POLICY "Enable insert for authenticated users only" ON "public"."bookings"
AS PERMISSIVE FOR INSERT
TO authenticated
WITH CHECK (true);

CREATE POLICY "Enable read access for all users" ON "public"."bookings"
AS PERMISSIVE FOR SELECT
TO public
USING (true);

CREATE POLICY "Enable update access to users"
ON public.bookings
FOR UPDATE USING (true) 
WITH CHECK (true);
