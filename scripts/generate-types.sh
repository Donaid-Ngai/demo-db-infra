#!/usr/bin/env bash
set -euo pipefail

SUPABASE_BIN="${SUPABASE_BIN:-/home/linuxbrew/.linuxbrew/bin/supabase}"
PROJECT_ID="${SUPABASE_PROJECT_ID:?SUPABASE_PROJECT_ID is required}"

mkdir -p generated/types
"$SUPABASE_BIN" gen types typescript --project-id "$PROJECT_ID" --schema restaurant_queue > generated/types/restaurant_queue.database.types.ts

echo "Generated types for schema: restaurant_queue"
