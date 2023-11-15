-- Vehicles
create table vehicles (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid references public.profiles (id) on delete cascade not null,
  plate text not null,
  make_model text not null
);

alter table vehicles
  enable row level security;

create policy "Users can author vehicles" on vehicles
  for insert with check (auth.uid() = user_id);

create policy "Users can update own vehicles." on vehicles
  for update using (auth.uid() = user_id);

create policy "Users can delete own posts" on vehicles
  for delete using (auth.uid() = user_id);

create policy "vehicles are viewable by everyone." on vehicles
  for select using (true);