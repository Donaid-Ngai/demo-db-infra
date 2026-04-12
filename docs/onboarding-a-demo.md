# Onboarding a New Demo Schema

## Example schema

For a restaurant queue app, use a schema like:

`restaurant_queue`

## Steps

1. Add schema SQL under `supabase/schemas/restaurant_queue/`
2. Create a migration under `supabase/migrations/`
3. Update generated types
4. Commit and open a PR
5. After merge, CI applies migrations and refreshes artifacts

## Naming example

Migration file:

`20260412140500_create_restaurant_queue_schema.sql`

## What app repos should use

- this repo's generated types
- this repo's schema docs
- a dedicated Supabase role or service configuration as needed
