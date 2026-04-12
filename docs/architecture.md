# Architecture

## Source of truth

This repo is the canonical source of truth for the shared demo Supabase database.

## Ownership model

- Each demo gets its own PostgreSQL schema.
- Migrations are applied from this repo only.
- App repos consume generated types or snapshots from this repo.

## Why this model

This avoids schema drift, duplicate migration histories, and accidental coupling across demo apps.

## Conventions

- Schema names should be lowercase snake_case.
- One demo per schema.
- Shared utilities should live in `public` only if genuinely shared.
- Avoid cross-schema references for demo apps.

## Recommended downstream integration

- Short term: copy generated `database.types.ts` files into app repos.
- Long term: publish generated types as an internal npm package.
