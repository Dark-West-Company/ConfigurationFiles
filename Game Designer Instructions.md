# Game Designer Instructions

Welcome to the Dark West RedM Config Manager! This guide will walk you through how to edit configuration files and submit changes for the Dark West server.

## How to Edit Config Files

1. **Create a Branch**: Create a feature branch for your changes
   ```bash
   git checkout -b feature/update-crafting-config
   ```
2. **Edit Config Files**: Edit the config files in the `configs/` directory
3. **Test Your Changes**: Ensure your file syntax is valid
4. **Submit PR**: Create a Pull Request with a clear description

## Config File Guidelines

### File Organization
- Config files are located directly in the `configs/` directory
- Files are named after the mod they configure
- Use lowercase naming with underscores: `mod_name_config.lua`
- Example: `dw_crafting_config.lua` for the DW Crafting mod

### JSON Files
- Ensure all JSON files are properly formatted
- Use consistent indentation (2 spaces)
- Validate JSON before submitting

### Lua Files
- Maintain existing code style and formatting
- Add comments for complex configuration sections
- Ensure syntax is valid

## Pull Request Process

1. **Clear Title**: Use descriptive PR titles
   - ✅ "Update DW Crafting rewards and difficulty settings"
   - ❌ "Fix stuff"

2. **Description**: Include:
   - What was changed and why
   - Which mod/resource is affected
   - Any testing you performed

3. **Review Process**: 
   - All PRs require review from a Dark West developer
   - Automated checks will validate file formats
   - Changes will be deployed automatically after approval

## Config Mapping

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
