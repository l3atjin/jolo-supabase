alter table "public"."driver_requests" add column "rider_id" uuid not null;

alter table "public"."driver_requests" add constraint "driver_requests_rider_id_fkey" FOREIGN KEY (rider_id) REFERENCES profiles(id) ON DELETE SET NULL not valid;

alter table "public"."driver_requests" validate constraint "driver_requests_rider_id_fkey";

alter table "public"."driver_requests" add constraint unique_request_user_constraint UNIQUE (post_id, rider_id);

create policy "Enable insert for authenticated users only"
on "public"."driver_requests"
as permissive
for insert
to authenticated
with check (true);