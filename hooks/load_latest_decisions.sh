#!/bin/bash
# Auto-generated hook: load_latest_decisions
# Created: 2025-08-16T21:13:09.042610

echo "🔧 Executing hook: load_latest_decisions"

# Hook implementation
python3 /Users/MAC/Documents/projects/admin/scripts/query_context.py --command decisions --days 1

# Return success
exit 0
