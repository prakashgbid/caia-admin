#!/bin/bash

# CCU Quick Activation Script
# Run this at the start of any Claude Code session to ensure all configurations are active

echo "🚀 Activating Claude Code Ultimate (82 configurations)..."

# Quick activation - just set the key environment variables
export CCO_AUTO_INVOKE=true
export MAX_PARALLEL=50
export CCU_AUTO_OPTIMIZE=true
export DECISION_TRACKING_ENABLED=true
export QUALITY_GATES_ENABLED=true
export MONITORING_ENABLED=true

# Run the full initialization
source /Users/MAC/.claude/hooks/ccu-full-init.sh

echo ""
echo "✅ CCU is now FULLY ACTIVE!"
echo "Type 'ccu-status' to check configuration status"