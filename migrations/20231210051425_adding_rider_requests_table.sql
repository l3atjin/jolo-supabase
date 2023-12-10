create table "public"."rider_requests" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone default now(),
    "post_id" uuid,
    "driver_id " uuid,
    "status" trip_status
);


alter table "public"."rider_requests" enable row level security;

CREATE UNIQUE INDEX rider_requests_pkey ON public.rider_requests USING btree (id);

alter table "public"."rider_requests" add constraint "rider_requests_pkey" PRIMARY KEY using index "rider_requests_pkey";

alter table "public"."rider_requests" add constraint "rider_requests_driver_id _fkey" FOREIGN KEY ("driver_id ") REFERENCES profiles(id) ON DELETE SET NULL not valid;

alter table "public"."rider_requests" validate constraint "rider_requests_driver_id _fkey";

alter table "public"."rider_requests" add constraint "rider_requests_post_id_fkey" FOREIGN KEY (post_id) REFERENCES rider_posts(id) ON DELETE SET NULL not valid;

alter table "public"."rider_requests" validate constraint "rider_requests_post_id_fkey";

