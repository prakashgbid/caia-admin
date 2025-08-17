#!/bin/bash
# Auto-generated hook: start_context_daemon
# Created: 2025-08-16T21:13:09.042893

echo "🔧 Executing hook: start_context_daemon"

# Hook implementation
pgrep -f capture_context.py || python3 /Users/MAC/Documents/projects/admin/scripts/capture_context.py --daemon &

# Return success
exit 0
