create schema if not exists restaurant_queue;

create table if not exists restaurant_queue.queue_entries (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  phone text not null,
  party_size integer not null check (party_size > 0),
  note text,
  status text not null default 'waiting' check (status in ('waiting', 'seated', 'removed')),
  source text not null default 'qr' check (source in ('qr', 'walk-in', 'staff')),
  joined_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
