-- Create locations table
create table locations (
  id uuid primary key default uuid_generate_v4(),
  location_name text not null
);
