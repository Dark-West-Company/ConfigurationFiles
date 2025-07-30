# Game Designer Instructions

Welcome to the Dark West RedM Config Manager! This guide will walk you through how to edit configuration files and submit changes for the Dark West server using GitHub's web interface.

## 🎯 Quick Start Guide

### Step 1: Navigate to the Config File
1. Go to the [ConfigurationFiles repository](https://github.com/Dark-West-Company/ConfigurationFiles)
2. Click on the `configs/` folder
3. Find the config file you want to edit (e.g., `bcc_housing_main.lua`)
4. Click on the file name to open it

### Step 2: Edit the File
1. Click the **✏️ Edit this file** button (pencil icon) in the top right
2. Make your changes directly in the web editor
3. Use the preview tab to check formatting if needed

### Step 3: Save and Create Pull Request
1. Scroll down to the **"Commit changes"** section
2. Add a descriptive commit message (e.g., "Update housing prices for Valentine")
3. Add an optional description explaining your changes
4. **IMPORTANT**: Select **"Create a new branch for this commit and start a pull request"**
5. Click **"Propose changes"**

### Step 4: Complete the Pull Request
1. GitHub will take you to the Pull Request creation page
2. Add a clear title and description of what you changed
3. Click **"Create pull request"**
4. Wait for a developer to review and approve your changes

## 📁 Config File Guidelines

### File Organization
- Config files are located in the `configs/` directory
- Files are named after the mod they configure
- Examples: `bcc_housing_main.lua`, `vorp_core_config.lua`, `weathersync_config.lua`

### Editing Tips
- **Lua Files**: Use proper syntax - pay attention to commas, quotes, and brackets
- **Numbers**: Don't use quotes around numbers (use `100`, not `"100"`)
- **Text**: Always use quotes around text values (use `"Valentine"`, not `Valentine`)
- **Comments**: Add `--` before comments to explain your changes

### Common Config Types
- **BCC Mods**: Housing, Farming, Ranch, etc. (files start with `bcc_`)
- **VORP Mods**: Core system files (files start with `vorp_`)
- **Standalone**: Weather, custom scripts (various names)

## ✅ Pull Request Best Practices

1. **Clear Titles**: Use descriptive PR titles
   - ✅ "Increase housing prices in Valentine by 20%"
   - ✅ "Add new crafting recipes for survival category"
   - ❌ "Fix stuff" or "Update config"

2. **Good Descriptions**: Include:
   - What specific values you changed
   - Why you made the changes
   - Which areas/features are affected

3. **Example Description**:
   ```
   ## Changes Made
   - Increased hotel room prices from $5 to $8
   - Added new furniture options for player houses
   - Fixed typo in Valentine hotel name
   
   ## Reason
   Current prices are too low compared to other activities
   Players requested more furniture variety
   ```

## 🚀 After Your Pull Request

### What Happens Next
1. **Automatic Validation**: GitHub Actions will check your file syntax
2. **Developer Review**: A team member will review your changes
3. **Feedback**: You might get comments or requests for changes
4. **Approval**: Once approved, changes are automatically deployed to the server
5. **Go Live**: Your changes will be active on the Dark West server within minutes!

### If You Need to Make Changes
1. Go back to your Pull Request page
2. Click on the **"Files changed"** tab
3. Click the **✏️** button next to the file you want to edit
4. Make your changes and commit them
5. The Pull Request will automatically update

## 🆘 Getting Help

### Common Issues
- **Syntax Error**: If the automated checks fail, read the error message carefully
- **Permission Denied**: Make sure you're signed into GitHub and have access to the repository
- **Can't Find File**: Check the `configs/` folder - file names are specific

### Need Help?
- Ask in the Dark West Discord `#development` channel
- Tag a developer in your Pull Request with `@username`
- Include screenshots if you're having trouble with the GitHub interface

## 📋 Quick Reference

### File Locations
- **BCC Housing**: `bcc_housing_main.lua`, `bcc_housing_hotels.lua`, etc.
- **BCC Farming**: `bcc_farming_config.lua`, `bcc_farming_plants.lua`
- **VORP Core**: `vorp_core_config.lua`, `vorp_core_commands.lua`
- **Weather**: `weathersync_config.lua`

### Remember
- Always use the **"Create a new branch"** option when committing
- Write clear commit messages
- Test your changes if possible before submitting
- Be patient - reviews help keep the server stable!

---

*Happy configuring! Your changes help make the Dark West experience better for everyone.* 🤠

**Note**: Adding new mods is handled by Dark West developers. If you need a new mod added to the system, ask a developer to set up the mapping.

Game designers only need to edit existing config files in the `configs/` directory.

## Common Issues

### Invalid JSON
If you see JSON validation errors:
1. Use a JSON validator like [jsonlint.com](https://jsonlint.com)
2. Check for missing commas, quotes, or brackets
3. Ensure no trailing commas in JSON files

### Missing Files
If the workflow reports missing files:
1. Verify the file exists in the `configs/` directory
2. Ensure file is committed to git
3. Contact a Dark West developer if you need a new mod added

## Getting Help

- Check existing issues for similar problems
- Ask questions in the Dark West Discord
- Contact Dark West developers for:
  - Adding new mods to the system
  - Technical issues with deployments
  - Config mapping problems

## Guidelines

- Be respectful and professional in all communications
- Focus on constructive feedback for config changes
- Test your changes thoroughly before submitting
- Keep discussions relevant to Dark West server configuration
