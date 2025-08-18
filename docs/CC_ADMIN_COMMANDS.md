# 🎯 Claude Code Admin Commands Documentation

## Overview

The CC Admin Commands system provides instant access to all administrative functions directly from the Claude Code prompt. No terminal access required - everything runs through Claude's interface.

## Getting Started

### Basic Usage

1. **See all commands**: Type `%` and press Enter
2. **Execute a command**: Type `%` followed by the command (e.g., `%s`)
3. **Get help**: Type `%help`

### Command Structure

Commands follow this pattern:
```
%<command> [parameters]
```

Examples:
- `%s` - No parameters
- `%d 7` - With parameter (days)
- `%l "title" "description" "project"` - Multiple parameters

## Complete Command Reference

### 📊 Status & Monitoring Commands

| Command | Aliases | Description | Example |
|---------|---------|-------------|---------|
| `%status` | `%s` | Quick project overview with commits, TODOs, active work | `%s` |
| `%caia` | `%c` | CAIA-specific status with component tracking | `%c` |
| `%summary` | `%sum` | Executive summary across all projects | `%sum` |
| `%monitor` | `%mon` | Start real-time monitoring | `%monitor` |
| `%scan` | - | One-time security and quality scan | `%scan` |

### 📝 Decision & Progress Management

| Command | Aliases | Description | Example |
|---------|---------|-------------|---------|
| `%decisions` | `%d` | View recent decisions (default: 7 days) | `%d 14` |
| `%log` | `%l` | Log an architectural decision | `%l "Use React" "Better ecosystem" caia` |
| `%progress` | `%p` | Log progress on tasks | `%p "Auth complete" project 100` |
| `%discussion` | `%disc` | Document team discussions | `%disc "Sprint planning" "2-week sprints" caia` |

### 🔄 Context Management

| Command | Aliases | Description | Example |
|---------|---------|-------------|---------|
| `%context` | `%ctx` | Manual context capture (default: 1 hour) | `%ctx 24` |
| `%daemon` | - | Check if context daemon is running | `%daemon` |
| `%daemon-start` | - | Start hourly context captures | `%daemon-start` |
| `%daemon-stop` | - | Stop automatic captures | `%daemon-stop` |
| `%daemon-log` | - | View daemon activity logs | `%daemon-log` |

### ✅ Quality & Security

| Command | Aliases | Description | Example |
|---------|---------|-------------|---------|
| `%qa` | - | Run quality checks on all projects | `%qa` |
| `%qa-fix` | `%fix` | Auto-fix linting and format issues | `%qa-fix` |
| `%security` | `%sec` | Security vulnerability scan | `%security` |
| `%deps` | - | Check for outdated dependencies | `%deps` |

### 🎯 CAIA Management

| Command | Aliases | Description | Example |
|---------|---------|-------------|---------|
| `%tracker` | `%track` | Component tracking and publication status | `%tracker` |
| `%roadmap` | `%road` | Development priorities and timeline | `%roadmap` |
| `%components` | `%comp` | List all CAIA components | `%components` |
| `%migrate` | - | Migrate project to CAIA monorepo | `%migrate` |

### 🔄 Updates & News

| Command | Aliases | Description | Example |
|---------|---------|-------------|---------|
| `%update` | `%up` | Check and apply package updates | `%update` |
| `%news` | - | Tech news and GitHub trending | `%news` |
| `%self-update` | - | Update the admin system itself | `%self-update` |

### ⚡ Performance

| Command | Aliases | Description | Example |
|---------|---------|-------------|---------|
| `%ccu` | - | CC Ultimate integration status | `%ccu` |
| `%cco` | - | CC Orchestrator status | `%cco` |
| `%perf` | - | Performance metrics | `%perf` |
| `%test-ccu` | - | Test CCU configuration | `%test-ccu` |
| `%test-cco` | - | Test CCO setup | `%test-cco` |

### 📁 Project Management

| Command | Aliases | Description | Example |
|---------|---------|-------------|---------|
| `%project` | `%proj` | Get specific project summary | `%project caia` |
| `%todos` | `%todo` | List all TODOs across projects | `%todos` |
| `%commits` | - | Recent git commits | `%commits` |
| `%branches` | - | Active branches across repos | `%branches` |

### 🛠️ Utilities

| Command | Aliases | Description | Example |
|---------|---------|-------------|---------|
| `%menu` | `%m` | Interactive admin menu | `%menu` |
| `%dashboard` | `%dash` | Full admin dashboard | `%dashboard` |
| `%health` | `%h` | System health check | `%health` |
| `%actions` | - | Available quick actions | `%actions` |
| `%help` | `%?` | Show command help | `%help` |

## Advanced Usage

### Command Parameters

Many commands accept parameters to customize their behavior:

#### Time-based Parameters
```
%decisions 7    # Last 7 days
%decisions 30   # Last month
%context 24     # Last 24 hours
```

#### Project-specific Commands
```
%project caia
%project roulette-community
%project omnimind
```

#### Logging Commands with Multiple Parameters
```
%log "title" "description" "project"
%progress "title" "project" 75
%discussion "meeting title" "key points" "project"
```

### Command Chaining

You can execute multiple commands in sequence:
1. First run `%s` to get status
2. Then `%d` to see recent decisions
3. Finally `%qa` to check quality

## Best Practices

### Daily Workflow

1. **Start of day**:
   ```
   %s          # Quick status
   %d          # Recent decisions
   %todos      # Outstanding tasks
   ```

2. **During development**:
   ```
   %monitor    # Keep running for real-time alerts
   %qa         # Check quality before commits
   ```

3. **Making decisions**:
   ```
   %log "Architecture choice" "Detailed reasoning" "project"
   ```

4. **End of sprint**:
   ```
   %progress "Sprint goals" "project" 100
   %roadmap    # Update priorities
   ```

### Decision Logging Guidelines

Always log decisions when:
- Choosing between technologies
- Making architectural changes
- Defining project structure
- Setting development priorities

Format:
```
%log "Clear title" "Detailed explanation with reasoning" "project-name"
```

### Context Management

The context daemon runs automatically, but you can:
- Force capture: `%ctx`
- Check status: `%daemon`
- Review captures in `admin/context/` directory

## Troubleshooting

### Command Not Working?

1. **Check syntax**: Ensure you're using `%` prefix
2. **Check parameters**: Some commands require specific parameters
3. **Check daemon**: For context commands, ensure daemon is running
4. **Check scripts**: Verify admin scripts exist in `admin/scripts/`

### Common Issues

**Issue**: Command returns no output
**Solution**: Check if the underlying script exists and has execute permissions

**Issue**: Context daemon not capturing
**Solution**: Run `%daemon-start` to restart it

**Issue**: Decision not logging
**Solution**: Ensure all three parameters are provided: title, description, project

## Integration with Claude Code

### How It Works

1. **Recognition**: Claude recognizes `%` prefix as admin command
2. **Parsing**: Command and parameters are extracted
3. **Execution**: Appropriate script is run from `admin/scripts/`
4. **Display**: Results shown in CC interface

### Configuration Files

- **Command definitions**: `~/.claude/cc-command-handler.json`
- **Scripts location**: `/Users/MAC/Documents/projects/admin/scripts/`
- **Context storage**: `/Users/MAC/Documents/projects/admin/context/`
- **Decision logs**: `/Users/MAC/Documents/projects/admin/decisions/`

## Command Categories

Commands are organized into logical groups:

1. **Monitoring** - Real-time project status
2. **Decisions** - Architectural and progress tracking
3. **Context** - Project state management
4. **Quality** - Code quality and security
5. **CAIA** - CAIA-specific management
6. **Updates** - Package and news updates
7. **Performance** - Speed and optimization
8. **Projects** - Project-specific queries
9. **Utilities** - General tools and help

## Quick Reference Card

### Most Used Commands

```
%s          # Status
%c          # CAIA
%d          # Decisions
%l          # Log decision
%p          # Progress
%qa         # Quality check
%ctx        # Context
%help       # Help
```

### Power User Commands

```
%monitor    # Continuous monitoring
%qa-fix     # Auto-fix issues
%roadmap    # CAIA roadmap
%dashboard  # Full dashboard
```

---

*Last Updated: December 2024*
*Version: 1.0.0*