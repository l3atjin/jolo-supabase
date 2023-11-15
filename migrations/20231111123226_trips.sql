-- Trips
create type trip_status AS ENUM ('REQUESTED', 'CONFIRMED', 'REJECTED');

create table trips (
  id uuid primary key default uuid_generate_v4(),
  driver_post_id uuid references driver_posts,
  rider_post_id uuid references rider_posts,
  driver_id uuid references profiles (id) on delete cascade not null,
  rider_id uuid references profiles (id) on delete cascade not null,
  status trip_status default 'REQUESTED',
  created_at timestamp with time zone default now(),

  constraint non_null_post check (not (driver_post_id is null and rider_post_id is null))
);

alter table trips
  enable row level security;

create policy "Driver or rider can create trips" on trips
  for insert with check (auth.uid() = driver_id or auth.uid() = rider_id);

create policy "Driver or rider can update own trips." on trips
  for update using (auth.uid() = driver_id or auth.uid() = rider_id);

create policy "Driver or rider can delete own trips" on trips
  for delete using (auth.uid() = driver_id or auth.uid() = rider_id);

create policy "Driver or rider can see trips." on trips
  for select using (auth.uid() = driver_id or auth.uid() = rider_id);
