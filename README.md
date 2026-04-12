# Demo DB Infra

Source-of-truth repository for shared Supabase demo database infrastructure.

## Goals

- One shared Supabase project for demos
- One schema per demo app
- Centralized migrations and schema ownership
- Generated TypeScript types for downstream demo apps
- GitHub Actions to validate, apply migrations, and refresh generated artifacts

## Recommended model

Each demo owns a schema namespace, for example:

- `restaurant_queue`
- `booking_demo`
- `crm_poc`

App repos should not manage the shared database directly. Instead, this repo owns:

- SQL migrations
- schema snapshots
- generated types
- docs for onboarding new demos

## Folder layout

- `supabase/migrations/` - ordered SQL migrations
- `supabase/schemas/` - schema-specific SQL sources and snapshots
- `generated/types/` - generated TypeScript database types
- `.github/workflows/` - CI/CD for validation, deploy, and type refresh
- `docs/` - conventions and onboarding

## Suggested secrets

Add these GitHub Actions secrets to this repo:

- `SUPABASE_ACCESS_TOKEN`
- `SUPABASE_DB_PASSWORD`
- `SUPABASE_PROJECT_ID` (for your current demo project this is `mlzjoonosgydbozjdmlk`)

## Suggested future flow

1. Add a migration for a schema change
2. Open a PR
3. CI validates formatting and migration order
4. Merge to main
5. Action links to Supabase and applies migrations
6. Action regenerates TypeScript types
7. Generated artifacts are committed back or published as a package

## Notes

- Keep demo schemas isolated from one another.
- Avoid cross-schema foreign keys unless absolutely necessary.
- Prefer one-way app dependency on generated types from this repo.
- The current repo has already been linked to the Supabase project ref `mlzjoonosgydbozjdmlk` during local setup.
