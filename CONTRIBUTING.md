# Contributor Guidelines

Thank you for contributing to the RedM Config Manager! Please follow these guidelines when submitting changes.

## How to Contribute

1. **Fork the Repository**: Create a personal fork of this repository
2. **Create a Branch**: Create a feature branch for your changes
   ```bash
   git checkout -b feature/update-police-config
   ```
3. **Make Changes**: Edit the config files in the `configs/` directory
4. **Update Mapping**: If adding new files, update `config-mapping.json`
5. **Test Locally**: Ensure your JSON files are valid
6. **Submit PR**: Create a Pull Request with a clear description

## Config File Guidelines

### File Organization
- Place config files directly in the `configs/` directory
- Use lowercase naming with underscores: `mod_name_config.lua`
- Example: `dw_crafting_config.lua`
- Keep original config content but rename files for clarity

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
   - ✅ "Update police weapon loadouts and vehicle configs"
   - ❌ "Fix stuff"

2. **Description**: Include:
   - What was changed and why
   - Which resources are affected
   - Any testing performed

3. **Review Process**: 
   - All PRs require review from a maintainer
   - Automated checks will validate file formats
   - Testing may be performed on a staging server

## Config Mapping

When adding new config files, update `config-mapping.json`:

```json
{
  "configs/new_mod_config.lua": {
    "path": "path/to/server/location/config.lua",
    "filename": "config.lua"
  }
}
```

### Path Guidelines
- Use forward slashes `/` in paths
- Ensure destination paths match your server structure
- Test paths are correct before submitting

## Common Issues

### Invalid JSON
If you see JSON validation errors:
1. Use a JSON validator like [jsonlint.com](https://jsonlint.com)
2. Check for missing commas, quotes, or brackets
3. Ensure no trailing commas in JSON files

### Missing Files
If the workflow reports missing files:
1. Verify the file exists in the `configs/` directory
2. Check the path in `config-mapping.json` matches exactly
3. Ensure file is committed to git

## Getting Help

- Check existing issues for similar problems
- Ask questions in discussions
- Tag maintainers for urgent issues

## Code of Conduct

- Be respectful and professional
- Focus on constructive feedback
- Help others learn and improve
- Keep discussions relevant to config management
