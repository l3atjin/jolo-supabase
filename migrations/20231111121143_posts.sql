-- Driver posts
create table driver_posts (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid references profiles (id) on delete cascade not null,
  departure_id uuid references locations not null,
  destination_id uuid references locations not null,
  seats integer not null,
  "date" date not null,
  "time" time not null,
  fee integer not null,
  vehicle_id uuid references vehicles not null,
  details text,
  created_at timestamp with time zone default now()
);

alter table driver_posts
  enable row level security;

create policy "Users can author posts" on driver_posts
  for insert with check (auth.uid() = user_id);

create policy "Users can update own driver_posts." on driver_posts
  for update using (auth.uid() = user_id);

create policy "Users can delete own posts" on driver_posts
  for delete using (auth.uid() = user_id);

create policy "driver_posts are viewable by everyone." on driver_posts
  for select using (true);

-- Rider posts
create table rider_posts (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid references profiles (id) on delete cascade not null,
  departure_id uuid references locations not null,
  destination_id uuid references locations not null,
  "date" date not null,
  "time" time not null,
  details text,
  created_at timestamp with time zone default now()
);

alter table rider_posts
  enable row level security;

create policy "Users can author posts" on rider_posts
  for insert with check (auth.uid() = user_id);

create policy "Users can update own rider_posts." on rider_posts
  for update using (auth.uid() = user_id);

create policy "Users can delete own posts" on rider_posts
  for delete using (auth.uid() = user_id);

create policy "rider_posts are viewable by everyone." on rider_posts
  for select using (true);
