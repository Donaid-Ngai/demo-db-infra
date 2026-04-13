drop view if exists public.queue_entries;

create view public.queue_entries as
select
  id,
  name,
  phone,
  party_size,
  note,
  status,
  source,
  joined_at,
  updated_at
from restaurant_queue.queue_entries;

grant select, insert, update on public.queue_entries to anon, authenticated;
