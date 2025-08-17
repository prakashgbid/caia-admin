#!/bin/bash
# Auto-generated hook: backup_critical_decisions
# Created: 2025-08-16T21:13:09.043317

echo "🔧 Executing hook: backup_critical_decisions"

# Hook implementation
cp -r /Users/MAC/Documents/projects/admin/decisions /Users/MAC/Documents/projects/admin/decisions.backup.$(date +%Y%m%d)

# Return success
exit 0
