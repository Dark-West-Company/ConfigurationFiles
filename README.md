# Dark West RedM Config Manager

A centralized configuration management system for the Dark West RedM server that allows game designers to submit config changes via GitHub Pull Requests and automatically deploys them to the server via FTP.

## For Game Designers

**📖 [Read the Game Designer Instructions](Game%20Designer%20Instructions.md)** for step-by-step guidance on editing configs and submitting changes.

## How It Works

1. **Config Storage**: Config files are stored in the `configs/` directory, named after their respective mods
2. **Mapping System**: `config-mapping.json` defines where each config file should be deployed on the Dark West server
3. **PR Workflow**: Game designers edit configs and submit Pull Requests for review
4. **Auto Deployment**: GitHub Actions automatically deploy approved changes to the server via FTP

## Directory Structure

Config files are stored directly in the `configs/` directory, named after their respective mods:

```
configs/
└── dw_crafting_config.lua
```

### Naming Convention
- **Format**: lowercase with underscores between words
- **Rule**: Named after the mod they configure
- **Example**: `dw_crafting_config.lua` (for the DW Crafting mod)

## Configuration Mapping

The `config-mapping.json` file maps local config files to their deployment paths on the Dark West server:

### Format
```json
{
  "configs/mod_name_config.lua": {
    "path": "server/path/to/destination/config.lua",
    "filename": "config.lua"
  }
}
```

### Key Features:
- **URL Encoding Support**: Use `%5B` for `[` and `%5D` for `]` in folder names
- **File Renaming**: Local file can have a different name than the target file on server
- **Complex Paths**: Support for deep directory structures with special characters

### Common URL Encodings:
- `[` → `%5B`
- `]` → `%5D` 
- ` ` (space) → `%20`
- `&` → `%26`
- `+` → `%2B`

### Current Example:
```json
{
  "configs/dw_crafting_config.lua": {
    "path": "server/txData/{SERVER_BASE}/resources/%5BDW_CUSTOM%5D/dw_crafting/config.lua", 
    "filename": "config.lua"
  }
}
```

This configuration:
- Takes the local file `configs/dw_crafting_config.lua`
- Uses `{SERVER_BASE}` variable for server-specific base directory
- Deploys it to `/server/txData/{SERVER_BASE}/resources/[DW_CUSTOM]/dw_crafting/`
- Renames it to `config.lua` on the server

### Server Base Variable
The `{SERVER_BASE}` placeholder allows the same config mapping to work across different server installations:
- **Development**: Could be `VORPCore_123456.base`
- **Production**: Could be `VORPCore_758630.base`  
- **Testing**: Could be `VORPCore_999999.base`

The actual value is configured via the `SERVER_BASE` GitHub Secret.

## Usage

1. Edit config files in the `configs/` directory
2. Create a Pull Request with your changes
3. After review and approval, merge the PR
4. GitHub Actions will automatically deploy the configs to the Dark West server

## Technical Notes

- FTP credentials are stored as encrypted GitHub Secrets
- `SERVER_BASE` secret must be configured to match your server's base directory
- Only authorized team members can approve and merge PRs
- All changes are tracked in Git history
- The `config-mapping.schema.json` provides IDE autocomplete and validation support

### Required GitHub Secrets
- `FTP_SERVER`: Your FTP server hostname
- `FTP_USERNAME`: FTP username
- `FTP_PASSWORD`: FTP password  
- `FTP_PORT`: FTP port (usually 21)
- `SERVER_BASE`: **[REQUIRED]** Server base directory (e.g., `VORPCore_758630.base`)

**⚠️ Important**: The `SERVER_BASE` secret must be configured or deployments will fail. There is no default fallback.
