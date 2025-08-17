#!/bin/bash
# Auto-generated hook: pre_session_context_check
# Created: 2025-08-16T21:13:09.042504

echo "🔧 Executing hook: pre_session_context_check"

# Hook implementation
python3 /Users/MAC/Documents/projects/admin/scripts/query_context.py --command summary

# Return success
exit 0
