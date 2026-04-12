#!/usr/bin/env bash
set -euo pipefail

SUPABASE_BIN="${SUPABASE_BIN:-/home/linuxbrew/.linuxbrew/bin/supabase}"
PROJECT_ID="${SUPABASE_PROJECT_ID:?SUPABASE_PROJECT_ID is required}"

"$SUPABASE_BIN" link --project-ref "$PROJECT_ID"
"$SUPABASE_BIN" db push --include-all

echo "Applied migrations to project: $PROJECT_ID"
