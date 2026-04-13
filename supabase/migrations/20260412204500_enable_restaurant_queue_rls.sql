alter table restaurant_queue.queue_entries enable row level security;

drop policy if exists "public can read queue entries" on restaurant_queue.queue_entries;
create policy "public can read queue entries"
on restaurant_queue.queue_entries
for select
using (true);

drop policy if exists "public can insert queue entries" on restaurant_queue.queue_entries;
create policy "public can insert queue entries"
on restaurant_queue.queue_entries
for insert
with check (true);

drop policy if exists "public can update queue entries" on restaurant_queue.queue_entries;
create policy "public can update queue entries"
on restaurant_queue.queue_entries
for update
using (true)
with check (true);
