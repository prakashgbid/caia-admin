#!/bin/bash
# Auto-generated hook: health_check_directories
# Created: 2025-08-16T21:13:09.043856

echo "🔧 Executing hook: health_check_directories"

# Hook implementation
for dir in context decisions logs; do [ -d /Users/MAC/Documents/projects/admin/$dir ] && echo "✅ $dir" || echo "❌ $dir"; done

# Return success
exit 0
