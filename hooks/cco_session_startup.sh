#!/bin/bash
# CCO-Enhanced Session Startup Hook
# Auto-executes on Claude session start

echo "🎯 CCO-Enhanced Session Starting..."
echo "=================================="

# Set environment variables
export CAIA_ROOT="/Users/MAC/Documents/projects/caia"
export ADMIN_ROOT="/Users/MAC/Documents/projects/admin"
export CCO_ENABLED="true"
export MAX_PARALLEL=50

# Quick status check
if [ -f "$ADMIN_ROOT/scripts/quick_status.sh" ]; then
    echo "📊 Running quick status check..."
    "$ADMIN_ROOT/scripts/quick_status.sh"
fi

# Load context
if [ -f "$ADMIN_ROOT/scripts/query_context.py" ]; then
    echo "🧠 Loading context..."
    python3 "$ADMIN_ROOT/scripts/query_context.py" --command summary
fi

# Start context daemon if not running
if ! pgrep -f capture_context.py > /dev/null; then
    echo "🔄 Starting context daemon..."
    python3 "$ADMIN_ROOT/scripts/capture_context.py" --daemon &
fi

# Generate session ID
export SESSION_ID="session_$(date +%Y%m%d_%H%M%S)"
echo "🆔 Session ID: $SESSION_ID"

echo ""
echo "✨ CCO Integration Active - 82 configurations loaded"
echo "⚡ Parallel execution enabled (MAX_PARALLEL=$MAX_PARALLEL)"
echo ""
