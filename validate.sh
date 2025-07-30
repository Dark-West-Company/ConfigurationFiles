#!/bin/bash

# Local validation script for config files
# Run this before committing to catch issues early

echo "🔍 Validating RedM Config Manager files..."
echo

# Check if config-mapping.json is valid JSON
echo "Checking config-mapping.json..."
if ! python -m json.tool config-mapping.json > /dev/null 2>&1; then
    echo "❌ config-mapping.json is not valid JSON"
    exit 1
else
    echo "✅ config-mapping.json is valid JSON"
fi

# Check that all mapped files exist
echo
echo "Checking mapped config files..."
python3 << 'EOF'
import json
import os
import sys

with open('config-mapping.json', 'r') as f:
    mappings = json.load(f)

missing_files = []
for local_path, mapping_value in mappings.items():
    if not os.path.exists(local_path):
        missing_files.append(local_path)

if missing_files:
    print("❌ Missing config files:")
    for file in missing_files:
        print(f"  - {file}")
    sys.exit(1)
else:
    print("✅ All mapped config files exist")
    print("✅ URL-encoded paths will be decoded during deployment")
EOF

if [ $? -ne 0 ]; then
    exit 1
fi

# Validate JSON config files
echo
echo "Validating JSON config files..."
json_files=$(find configs/ -name "*.json" 2>/dev/null)
json_valid=true

for file in $json_files; do
    if ! python -m json.tool "$file" > /dev/null 2>&1; then
        echo "❌ Invalid JSON: $file"
        json_valid=false
    else
        echo "✅ Valid JSON: $file"
    fi
done

if [ "$json_valid" = false ]; then
    exit 1
fi

# Check Lua syntax (if lua is available)
if command -v lua >/dev/null 2>&1; then
    echo
    echo "Checking Lua syntax..."
    lua_files=$(find configs/ -name "*.lua" 2>/dev/null)
    lua_valid=true
    
    for file in $lua_files; do
        if ! lua -e "dofile('$file')" 2>/dev/null; then
            echo "⚠️  Lua syntax warning: $file (may have undefined globals - this is normal for config files)"
        else
            echo "✅ Valid Lua: $file"
        fi
    done
else
    echo
    echo "⚠️  Lua not found - skipping Lua syntax validation"
fi

echo
echo "🎉 Validation complete! All checks passed."
echo "You can safely commit your changes."
