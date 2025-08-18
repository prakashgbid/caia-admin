# 🎓 Claude Code Admin Commands Tutorial

## Introduction

Welcome to the CC Admin Commands tutorial! This guide will walk you through using admin commands in Claude Code to manage your projects efficiently.

## Lesson 1: Your First Command

### Step 1: Open Claude Code
Start a new Claude Code session in your terminal:
```bash
claude
```

### Step 2: Try the Help Command
In the CC prompt, type:
```
%
```
Press Enter. You'll see all available commands with descriptions!

### Step 3: Check Project Status
Now type:
```
%s
```
This shows a quick overview of all your projects.

**What you learned**: 
- `%` shows all commands
- `%s` gives quick status
- Commands work directly in CC prompt

---

## Lesson 2: Understanding Command Output

When you run `%s`, you'll see:
```
📊 Project Summary:
   Total Projects: X
   Active Projects: X
   Recent Commits: X
   Open TODOs: X

📝 Recent Decisions (24h):
   - [category] Decision title

🔥 Active Projects:
   - project1...
   - project2...
```

### Try It Yourself
1. Run `%s` to see your status
2. Note how many TODOs you have
3. Check which projects are active

---

## Lesson 3: Logging Decisions

One of the most powerful features is decision logging. Let's log your first decision!

### Basic Decision Log
Type this command (replace with your actual decision):
```
%l "Chose TypeScript" "Better type safety and IDE support" "my-project"
```

Format breakdown:
- `%l` = log command
- First quotes = Title
- Second quotes = Description
- Third parameter = Project name

### Try Different Decision Types

**Architecture Decision**:
```
%l "Microservices architecture" "Better scalability for our needs" "caia"
```

**Technology Choice**:
```
%l "PostgreSQL over MongoDB" "Need ACID compliance" "roulette-community"
```

**Design Pattern**:
```
%l "Repository pattern" "Cleaner data access layer" "project-name"
```

---

## Lesson 4: Tracking Progress

### Log Progress on Tasks
```
%p "Authentication module" "roulette-community" 75
```

This logs:
- Task: Authentication module
- Project: roulette-community  
- Completion: 75%

### Progress Milestones
```
%p "Sprint 1 goals" "caia" 100        # Sprint complete
%p "API development" "project" 50      # Halfway done
%p "Testing phase" "app" 25            # Just started
```

---

## Lesson 5: Context Management

### Understanding Context
Context captures save your project state. They run automatically every hour.

### Manual Context Capture
```
%ctx
```
Captures the last hour of changes.

### Capture Longer Period
```
%ctx 24
```
Captures last 24 hours.

### Check Daemon Status
```
%daemon
```
Shows if automatic captures are running.

---

## Lesson 6: Quality Assurance

### Run Quality Checks
```
%qa
```
Checks all projects for:
- Linting errors
- Test failures
- Security issues
- Type errors

### Auto-Fix Issues
```
%qa-fix
```
Automatically fixes:
- Formatting issues
- Simple linting errors
- Import sorting

### Security Scan
```
%security
```
Checks for vulnerabilities in dependencies.

---

## Lesson 7: CAIA Project Management

### Check CAIA Status
```
%c
```
Shows CAIA-specific information.

### View Component Tracking
```
%tracker
```
Lists all components and their status.

### Development Roadmap
```
%roadmap
```
Shows upcoming priorities.

---

## Lesson 8: Viewing Historical Data

### Recent Decisions (7 days)
```
%d
```

### Decisions from Last 2 Weeks
```
%d 14
```

### Last Month
```
%d 30
```

---

## Lesson 9: Project-Specific Commands

### Get Project Summary
```
%project caia
```

### Check Different Projects
```
%project roulette-community
%project omnimind
%project admin
```

### Find TODOs
```
%todos
```
Shows all TODO comments in code.

---

## Lesson 10: Advanced Workflows

### Morning Routine
Start your day with:
```
%s          # Quick status
%d          # Recent decisions  
%todos      # Outstanding tasks
%deps       # Check for updates
```

### Before Committing Code
```
%qa         # Quality check
%security   # Security scan
%l "Fixed bug in auth" "Resolved race condition" "project"
```

### End of Sprint
```
%p "Sprint 2 complete" "project" 100
%sum        # Executive summary
%roadmap    # Update priorities
```

---

## Practice Exercises

### Exercise 1: Basic Commands
1. Check your project status with `%s`
2. View recent decisions with `%d`
3. Check CAIA status with `%c`

### Exercise 2: Logging
1. Log a decision about a technology choice
2. Log progress on a current task
3. Log a team discussion

### Exercise 3: Quality
1. Run quality checks with `%qa`
2. Check for outdated dependencies with `%deps`
3. Run a security scan with `%security`

### Exercise 4: Context
1. Capture current context with `%ctx`
2. Check daemon status with `%daemon`
3. View executive summary with `%sum`

---

## Quick Reference Scenarios

### Scenario: "What was I working on?"
```
%s          # Quick status
%d 3        # Last 3 days of decisions
%sum        # Full summary
```

### Scenario: "Is my code ready to commit?"
```
%qa         # Quality check
%security   # Security scan
%todos      # Any remaining TODOs?
```

### Scenario: "What's the project priority?"
```
%roadmap    # Development roadmap
%c          # CAIA status
%tracker    # Component tracking
```

### Scenario: "Document what I just did"
```
%l "Implemented feature X" "Details about implementation" "project"
%p "Feature X" "project" 100
```

---

## Tips & Tricks

### 1. Use Aliases
Most commands have short aliases:
- `%s` instead of `%status`
- `%c` instead of `%caia`
- `%d` instead of `%decisions`

### 2. Remember the Pattern
```
%command [parameters]
```

### 3. When in Doubt
Just type `%` to see all commands!

### 4. Log Everything Important
Future you will thank present you for logging decisions.

### 5. Check Status Often
`%s` takes 1 second but saves hours of confusion.

---

## Common Mistakes to Avoid

### ❌ Don't Forget Parameters
Wrong: `%l "Title"`
Right: `%l "Title" "Description" "project"`

### ❌ Don't Skip Quotes
Wrong: `%l Title Description project`
Right: `%l "Title" "Description" "project"`

### ❌ Don't Use Wrong Project Names
Check existing projects first with `%s`

### ❌ Don't Ignore Quality Checks
Always run `%qa` before committing

---

## Troubleshooting

### "Command not recognized"
- Make sure you're using `%` prefix
- Check spelling of command
- Type just `%` to see all available commands

### "Missing parameters"
- Some commands need additional info
- Check the examples in this tutorial
- Use `%help` for command reference

### "No output"
- Command might be running in background
- Check if daemon is running with `%daemon`
- Try `%s` to verify system is working

---

## Next Steps

1. **Practice Daily**: Use commands in your regular workflow
2. **Log Decisions**: Make it a habit to document choices
3. **Monitor Quality**: Regular `%qa` checks
4. **Track Progress**: Use `%p` to show accomplishments
5. **Stay Updated**: Run `%update` weekly

---

## Cheat Sheet

### Essential Commands
```
%       - Show all commands
%s      - Status
%c      - CAIA
%d      - Decisions
%l      - Log decision
%p      - Progress
%qa     - Quality
%help   - Help
```

### Daily Workflow
```
Morning:  %s, %d, %todos
Coding:   %qa, %security
Deciding: %l "..." "..." "..."
Progress: %p "..." "..." N
Evening:  %ctx, %sum
```

---

## Congratulations! 🎉

You've completed the CC Admin Commands tutorial! You now know how to:
- ✅ Use admin commands in Claude Code
- ✅ Log decisions and progress
- ✅ Check project status and quality
- ✅ Manage context and monitoring
- ✅ Navigate the entire admin system

**Remember**: The more you use these commands, the more valuable they become. Your future self will appreciate the decisions logged and context captured today!

---

*Tutorial Version: 1.0.0*
*Last Updated: December 2024*