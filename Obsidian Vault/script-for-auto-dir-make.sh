#!/bin/bash

# PARA Method Obsidian Vault Setup Script
# This script creates the complete folder structure and initial files for PARA method

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Setting up PARA Method Obsidian Vault Structure${NC}"
echo "=============================================="

# Get vault path from user or use current directory
read -p "Enter your Obsidian vault path (or press Enter for current directory): " VAULT_PATH
VAULT_PATH=${VAULT_PATH:-$(pwd)}

# Verify the path exists
if [ ! -d "$VAULT_PATH" ]; then
  echo -e "${RED}❌ Directory $VAULT_PATH does not exist!${NC}"
  exit 1
fi

cd "$VAULT_PATH"
echo -e "${GREEN}📁 Working in: $VAULT_PATH${NC}"

# Function to create directory and log it
create_dir() {
  mkdir -p "$1"
  echo -e "${YELLOW}📂 Created folder: $1${NC}"
}

# Function to create file with content
create_file() {
  local file_path="$1"
  local content="$2"

  # Create directory if it doesn't exist
  mkdir -p "$(dirname "$file_path")"

  # Only create file if it doesn't exist
  if [ ! -f "$file_path" ]; then
    echo -e "$content" >"$file_path"
    echo -e "${GREEN}📄 Created file: $file_path${NC}"
  else
    echo -e "${YELLOW}⚠️  File already exists: $file_path${NC}"
  fi
}

echo -e "\n${BLUE}Creating main PARA folders...${NC}"

# Main PARA Structure
create_dir "01-Projects"
create_dir "02-Areas"
create_dir "03-Resources"
create_dir "04-Archive"
create_dir "Templates"
create_dir "Daily Notes"
create_dir "Attachments"

echo -e "\n${BLUE}Creating Projects structure...${NC}"

# Projects Structure
create_dir "01-Projects/Active"
create_dir "01-Projects/On Hold"
create_dir "01-Projects/Planning"
create_dir "01-Projects/Project Resources/Launcher App"
create_dir "01-Projects/Project Resources/C Encryption"
create_dir "01-Projects/Project Resources/Security App"

echo -e "\n${BLUE}Creating Areas structure...${NC}"

# Areas Structure
create_dir "02-Areas/Linux Learning/Command Categories"
create_dir "02-Areas/Linux Learning/Tools"
create_dir "02-Areas/Programming Languages/Python/Concepts"
create_dir "02-Areas/Programming Languages/Python/Code Snippets"
create_dir "02-Areas/Programming Languages/Bash"
create_dir "02-Areas/Programming Languages/C Programming"
create_dir "02-Areas/Technology & Knowledge/Emerging Tech"
create_dir "02-Areas/Professional Development"

echo -e "\n${BLUE}Creating Resources structure...${NC}"

# Resources Structure
create_dir "03-Resources/Learning Materials/Books"
create_dir "03-Resources/Learning Materials/Courses"
create_dir "03-Resources/Learning Materials/Documentation"
create_dir "03-Resources/Learning Materials/Articles & Papers"
create_dir "03-Resources/Tools & Utilities"
create_dir "03-Resources/Code Libraries"
create_dir "03-Resources/Reference Materials"

echo -e "\n${BLUE}Creating Daily Notes structure...${NC}"

# Daily Notes Structure
CURRENT_YEAR=$(date +%Y)
CURRENT_MONTH=$(date +%m-%B)
create_dir "Daily Notes/$CURRENT_YEAR/$CURRENT_MONTH"

echo -e "\n${BLUE}Creating initial files...${NC}"

# Home Dashboard
create_file "Home.md" "# My Knowledge System

## Quick Navigation
- [[Projects Dashboard]] - Active work
- [[Areas Overview]] - Learning & maintenance  
- [[Resources Dashboard]] - Reference materials
- [[Daily Notes Dashboard]] - Daily captures

## Today's Focus
- Current project priority
- Learning goal for today
- Quick captures

## Recent Updates
- Latest project progress
- New learnings
- Important notes

## Quick Links
- [[Linux Commands Master List]]
- [[Python Quick Reference]]
- [[Current Sprint Planning]]

---
*Last updated: $(date +%Y-%m-%d)*"

# Projects Dashboard
create_file "01-Projects/Projects Dashboard.md" "# Projects Dashboard

## Active Projects
- [[Launcher App]] - Status: In Development
- [[C Encryption]] - Status: Research Phase  
- [[Security App]] - Status: Planning

## This Week's Priorities
- [ ] Launcher App: Complete UI mockup
- [ ] C Encryption: Finish algorithm research
- [ ] Security App: Define requirements

## Project Metrics
- Total Active Projects: 3
- Completed This Month: 0
- On Hold: 0

## Project Resources
- [[Project Templates]]
- [[Development Tools]]
- [[Testing Guidelines]]

---
*Updated: $(date +%Y-%m-%d)*"

# Individual Project Files
create_file "01-Projects/Active/Launcher App.md" "# Launcher App

**Status**: Active  
**Priority**: High  
**Started**: $(date +%Y-%m-%d)  
**Deadline**: TBD

## Project Overview
Application launcher with custom features

## Current Sprint
### This Week's Goals
- [ ] Define core requirements
- [ ] Create UI mockups
- [ ] Set up development environment

### Next Actions
- [ ] Research existing launcher apps
- [ ] Choose technology stack
- [ ] Create project structure

## Progress Log
### $(date +%Y-%m-%d)
- Project initiated
- Created project structure in PARA system

## Resources & Links
- [[Launcher App Architecture Notes]]
- [[Launcher App Feature Requirements]]

## Notes & Ideas
- Consider Python GUI frameworks
- Look into system integration requirements
- Plan for cross-platform compatibility

---
*Last updated: $(date +%Y-%m-%d)*"

create_file "01-Projects/Active/C Encryption.md" "# C Encryption Project

**Status**: Active  
**Priority**: Medium  
**Started**: $(date +%Y-%m-%d)  
**Deadline**: TBD

## Project Overview
Encryption/decryption tool built in C

## Current Sprint
### Research Phase
- [ ] Study encryption algorithms
- [ ] Review C crypto libraries
- [ ] Define security requirements

### Next Actions
- [ ] Choose encryption algorithm (AES, RSA, etc.)
- [ ] Set up development environment
- [ ] Create basic project structure

## Progress Log
### $(date +%Y-%m-%d)
- Project initiated
- Added to PARA system

## Resources & Links
- [[C Encryption Algorithm Research]]
- [[C Encryption Implementation Notes]]

## Technical Notes
- Consider OpenSSL integration
- Plan for secure key management
- Think about file vs. stream encryption

---
*Last updated: $(date +%Y-%m-%d)*"

create_file "01-Projects/Active/Security App.md" "# Security App

**Status**: Active  
**Priority**: Medium  
**Started**: $(date +%Y-%m-%d)  
**Deadline**: TBD

## Project Overview
Security-focused application (details to be defined)

## Current Sprint
### Planning Phase
- [ ] Define app purpose and scope
- [ ] Research security requirements
- [ ] Plan architecture

### Next Actions
- [ ] Create detailed requirements document
- [ ] Choose development framework
- [ ] Design security model

## Progress Log
### $(date +%Y-%m-%d)
- Project initiated
- Added to PARA system

## Resources & Links
- [[Security App Security Models]]
- [[Security App User Interface Design]]

## Ideas & Considerations
- Focus on practical security tools
- Consider integration with system security
- Plan for user-friendly interface

---
*Last updated: $(date +%Y-%m-%d)*"

# Areas Dashboard
create_file "02-Areas/Areas Overview.md" "# Areas Overview

## Learning & Development Areas

### 🐧 Linux Learning
- [[Linux Learning Dashboard]]
- Current focus: Command mastery and system administration
- Practice environment: Personal Linux setup

### 💻 Programming Languages
- [[Programming Dashboard]]
- **Python**: Advanced concepts and project application
- **Bash**: Scripting and automation
- **C**: System programming and encryption

### 🌐 Technology & Knowledge
- [[Knowledge Dashboard]]
- General tech trends and emerging technologies
- Security concepts and best practices

### 🚀 Professional Development
- [[Career Goals]]
- [[Skills Assessment]]
- [[Learning Path]]

## This Month's Learning Focus
- [ ] Master 10 new Linux commands
- [ ] Complete Python file handling deep dive
- [ ] Research modern encryption methods
- [ ] Study WebAssembly applications

---
*Updated: $(date +%Y-%m-%d)*"

# Linux Learning Dashboard
create_file "02-Areas/Linux Learning/Linux Learning Dashboard.md" "# Linux Learning Dashboard

## Current Learning Focus
- **Commands**: File operations and text processing
- **Tools**: vim, git, tmux mastery
- **Concepts**: System administration basics

## Command Categories
- [[File Operations]] - ls, cp, mv, find, etc.
- [[Text Processing]] - grep, sed, awk, sort
- [[Process Management]] - ps, top, kill, jobs
- [[Network Commands]] - ssh, scp, netstat, curl
- [[System Monitoring]] - htop, df, du, free

## Tools Deep Dive
- [[vim]] - Editor mastery
- [[git]] - Version control
- [[tmux]] - Terminal multiplexer
- [[ssh]] - Remote access and security

## Learning Progress
### Recently Mastered
- Basic file operations
- Text viewing and editing

### Currently Learning
- [ ] Advanced grep patterns
- [ ] Shell scripting basics
- [ ] System monitoring tools

### Next to Learn
- [ ] Advanced bash scripting
- [ ] System administration
- [ ] Network troubleshooting

## Practice Log
- Daily command practice in personal environment
- Applied learning to current projects

---
*Updated: $(date +%Y-%m-%d)*"

# Programming Dashboard
create_file "02-Areas/Programming Languages/Programming Dashboard.md" "# Programming Languages Dashboard

## Current Learning Status

### 🐍 Python
**Level**: Intermediate  
**Focus**: File handling, project structure, best practices

#### Recent Progress
- Mastered configparser module
- Applied to Launcher App project
- Improved error handling patterns

#### Current Learning
- [ ] Advanced file I/O operations
- [ ] Testing with pytest
- [ ] Package structure and distribution

### 📜 Bash Scripting
**Level**: Beginner-Intermediate  
**Focus**: Automation and system tasks

#### Current Learning
- [ ] Function definitions and usage
- [ ] Error handling in scripts
- [ ] Advanced parameter handling

### ⚡ C Programming
**Level**: Intermediate  
**Focus**: System programming and encryption

#### Current Learning  
- [ ] Memory management best practices
- [ ] Cryptographic library integration
- [ ] Cross-platform development

## Language-Specific Resources
- [[Python Libraries]] - Useful modules and packages
- [[Bash Script Examples]] - Common patterns and solutions
- [[C Best Practices]] - Coding standards and patterns

## Practice Projects
- All three languages being applied to active projects
- Regular coding challenges and exercises

---
*Updated: $(date +%Y-%m-%d)*"

# Resources Dashboard
create_file "03-Resources/Resources Dashboard.md" "# Resources Dashboard

## Learning Materials by Category

### 📚 Books & References
- [[Programming Books]] - Language-specific books
- [[Linux Books]] - System administration and command references
- [[Tech Books]] - General technology and computer science

### 🎥 Online Learning
- [[YouTube Channels]] - Curated educational channels
- [[Online Courses]] - Structured learning paths
- [[Tutorial Sites]] - Web-based tutorials and guides

### 📖 Documentation
- [[Official Docs Collection]] - Language and tool documentation
- [[API References]] - Quick reference materials
- [[Man Pages Favorites]] - Most useful Linux man pages

### 🔧 Tools & Utilities
- [[Development Tools]] - IDEs, editors, debuggers
- [[Linux Utilities]] - System and productivity tools
- [[Online Resources]] - Web-based tools and services

## Resource Quality Rating System
⭐⭐⭐⭐⭐ - Essential, reference frequently  
⭐⭐⭐⭐ - Very useful, solid learning material  
⭐⭐⭐ - Good resource, worth bookmarking  
⭐⭐ - Decent, specific use cases  
⭐ - Not recommended

## Recently Added Resources
- Add new discoveries here with ratings
- Link to discovery date in daily notes

---
*Updated: $(date +%Y-%m-%d)*"

# Daily Note Template
create_file "Templates/Daily Note Template.md" "# {{date}}

## Today's Focus
- [ ] Priority project tasks
- [ ] Learning goals
- [ ] Administrative items

## Project Work

### Launcher App
- [ ] Tasks for today
- Progress notes:

### C Encryption  
- [ ] Tasks for today
- Progress notes:

### Security App
- [ ] Tasks for today  
- Progress notes:

## Learning & Knowledge Building

### Linux Learning
- New commands discovered:
- Tools explored:
- Concepts learned:

### Programming
- Python practice:
- Bash scripting:
- C programming:
- Code snippets:

### General Tech/Knowledge
- Articles read:
- Technologies explored:
- General knowledge gained:

## Quick Captures
- Random thoughts and ideas
- Things to research later
- Interesting discoveries

## Resource Discoveries
- New tutorials/articles found:
- Tools discovered:
- Documentation referenced:

## Tomorrow's Priorities
- Top 3 focus areas:
- Learning objectives:

---
*Weather/Mood/Energy:*  
*Key wins today:*"

# Templates for other note types
create_file "Templates/Project Template.md" "# {{title}}

**Status**: Active/On Hold/Planning  
**Priority**: High/Medium/Low  
**Started**: {{date}}  
**Deadline**: TBD

## Project Overview
Brief description of the project

## Current Sprint
### This Week's Goals
- [ ] Goal 1
- [ ] Goal 2  
- [ ] Goal 3

### Next Actions
- [ ] Immediate next step
- [ ] Follow-up action
- [ ] Future consideration

## Progress Log
### {{date}}
- Initial project setup

## Resources & Links
- Related notes and materials

## Technical Notes
- Architecture decisions
- Technology choices
- Implementation notes

## Ideas & Future Enhancements
- Feature ideas
- Improvements to consider
- Long-term vision

---
*Last updated: {{date}}*"

create_file "Templates/Command Reference Template.md" "# Command: {{title}}

## What it does
Brief description of the command's purpose

## Basic syntax
\`command [options] arguments\`

## Common options
- \`-option\` - description
- \`--long-option\` - description

## Examples I've used
\`\`\`bash
# Example 1: Basic usage
command example

# Example 2: With options  
command -option argument

# Example 3: Advanced usage
command --advanced-option file.txt
\`\`\`

## Real applications
- **Project context**: How I used this in my projects
- **Daily workflow**: Regular use cases
- **Problem solved**: Specific problems this command addressed

## Related commands
- [[similar-command]] - how it differs
- [[complementary-command]] - often used together

## Notes & Tips
- Performance considerations
- Common gotchas
- Best practices

## Discovery & Learning Path
- **Found**: [[YYYY-MM-DD]] - where/how I discovered this
- **Resources used**: man page, tutorials, etc.
- **Practice log**: when and how I practiced

---
*Last updated: {{date}}*"

create_file "Templates/Learning Note Template.md" "# {{title}}

## My Understanding
Explain the concept in your own words

## Key Points
- Main concept 1
- Main concept 2  
- Main concept 3

## Examples & Applications
Practical examples, especially related to your projects

\`\`\`language
// Code example if applicable
example_code();
\`\`\`

## Connected Concepts
- [[Related Topic 1]] - how they connect
- [[Related Topic 2]] - similarities/differences

## Project Applications
- **[[Project Name]]**: How this applies to your projects
- **Real use case**: Specific implementations

## Questions & Confusion
- What I'm still unsure about
- Areas needing more practice
- Follow-up research needed

## Resources Used
- **Primary source**: Where you learned this
- **Additional references**: Supporting materials
- **Quality rating**: ⭐⭐⭐⭐⭐

## Practice & Reinforcement
- [ ] Basic understanding achieved
- [ ] Applied to practice project
- [ ] Used in real project
- [ ] Can explain to others

---
*Discovered: [[YYYY-MM-DD]]*  
*Last reviewed: {{date}}*"

echo -e "\n${GREEN}✅ PARA folder structure created successfully!${NC}"
echo -e "\n${BLUE}📋 Summary:${NC}"
echo "- Main PARA folders: Projects, Areas, Resources, Archive"
echo "- Project structure with your specific projects"
echo "- Learning areas for Linux, Programming, and Tech knowledge"
echo "- Resource organization for materials and references"
echo "- Template files for consistent note-taking"
echo "- Dashboard files for navigation and overview"

echo -e "\n${YELLOW}📝 Next Steps:${NC}"
echo "1. Configure Obsidian to use 'Daily Notes' folder for daily notes"
echo "2. Set up Templates plugin to use the Templates folder"
echo "3. Start with Home.md as your main dashboard"
echo "4. Customize the templates to match your workflow"
echo "5. Begin capturing daily notes using the template"

echo -e "\n${GREEN}🎉 Your PARA system is ready to use!${NC}"
