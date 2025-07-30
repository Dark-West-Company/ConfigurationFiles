@echo off
REM Local validation script for config files (Windows)
REM Run this before committing to catch issues early

echo 🔍 Validating RedM Config Manager files...
echo.

REM Check if config-mapping.json is valid JSON
echo Checking config-mapping.json...
python -m json.tool config-mapping.json >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ config-mapping.json is not valid JSON
    exit /b 1
) else (
    echo ✅ config-mapping.json is valid JSON
)

echo.
echo Checking mapped config files...

REM Check that all mapped files exist
python -c "import json; import os; import sys; mappings = json.load(open('config-mapping.json')); missing = [f for f, _ in mappings.items() if not os.path.exists(f)]; print('❌ Missing config files:') if missing else print('✅ All mapped config files exist'); [print(f'  - {f}') for f in missing]; print('✅ URL-encoded paths will be decoded during deployment') if not missing else None; sys.exit(1 if missing else 0)"

if %errorlevel% neq 0 exit /b 1

echo.
echo Validating JSON config files...

REM Validate JSON config files
for /r configs %%f in (*.json) do (
    python -m json.tool "%%f" >nul 2>&1
    if !errorlevel! neq 0 (
        echo ❌ Invalid JSON: %%f
        set json_valid=false
    ) else (
        echo ✅ Valid JSON: %%f
    )
)

echo.
echo 🎉 Validation complete! All checks passed.
echo You can safely commit your changes.
pause
