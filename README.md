# RedM Config Manager

A centralized configuration management system for RedM servers that allows game designers to submit config changes via GitHub Pull Requests and automatically deploys them to the server via FTP.

## How It Works

1. **Config Storage**: All config files are stored in the `configs/` directory, organized by resource
2. **Mapping System**: `config-mapping.json` defines where each config file should be deployed on the server
3. **PR Workflow**: Game designers edit configs and submit Pull Requests for review
4. **Auto Deployment**: GitHub Actions automatically deploy approved changes via FTP

## Directory Structure

The config file is stored directly in the `configs/` directory:

```
configs/
└── dw_crafting_config.lua
```

### Naming Convention
- **Format**: lowercase with underscores between words
- **Example**: `dw_crafting_config.lua`

## Configuration Mapping

The `config-mapping.json` file supports two formats for maximum flexibility:

### Simple Format (Backward Compatible)
```json
{
  "configs/simple_resource/config.lua": "resources/simple_resource/config.lua"
}
```

### Enhanced Format (Recommended)
```json
{
  "configs/dw_crafting/dw_crafting_config.lua": {
    "path": "server/txData/VORPCore_758630.base/resources/%5BDW_CUSTOM%5D/dw_crafting/config.lua",
    "filename": "config.lua"
  }
}
```

### Key Features:
- **URL Encoding Support**: Use `%5B` for `[` and `%5D` for `]` in folder names
- **File Renaming**: Local file can have a different name than the target file
- **Complex Paths**: Support for deep directory structures with special characters

### Common URL Encodings:
- `[` → `%5B`
- `]` → `%5D` 
- ` ` (space) → `%20`
- `&` → `%26`
- `+` → `%2B`

### Example:
```json
{
  "configs/dw_crafting_config.lua": {
    "path": "server/txData/VORPCore_758630.base/resources/%5BDW_CUSTOM%5D/dw_crafting/config.lua", 
    "filename": "config.lua"
  }
}
```

This configuration will:
- Take the local file `configs/dw_crafting_config.lua`
- Deploy it to `/server/txData/VORPCore_758630.base/resources/[DW_CUSTOM]/dw_crafting/`
- Rename it to `config.lua` on the server

## Setup

1. Configure your FTP credentials in GitHub Secrets:
   - `FTP_SERVER`: Your FTP server hostname
   - `FTP_USERNAME`: FTP username
   - `FTP_PASSWORD`: FTP password
   - `FTP_PORT`: FTP port (default: 21)

2. Add your config files to the `configs/` directory
3. Update `config-mapping.json` with the correct paths
4. Commit and push to trigger deployment

## Usage

1. Edit config files in the `configs/` directory
2. Create a Pull Request with your changes
3. After review and approval, merge the PR
4. GitHub Actions will automatically deploy the configs to your RedM server

## Security Notes

- FTP credentials are stored as encrypted GitHub Secrets
- Only authorized team members can approve and merge PRs
- All changes are tracked in Git history
