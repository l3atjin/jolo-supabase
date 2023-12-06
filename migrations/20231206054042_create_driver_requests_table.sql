create table "public"."driver_requests" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone default now(),
    "post_id" uuid not null,
    "status" trip_status not null
);


alter table "public"."driver_requests" enable row level security;

CREATE UNIQUE INDEX driver_requests_pkey ON public.driver_requests USING btree (id);

alter table "public"."driver_requests" add constraint "driver_requests_pkey" PRIMARY KEY using index "driver_requests_pkey";

alter table "public"."driver_requests" add constraint "driver_requests_post_id_fkey" FOREIGN KEY (post_id) REFERENCES driver_posts(id) ON DELETE SET NULL not valid;

alter table "public"."driver_requests" validate constraint "driver_requests_post_id_fkey";