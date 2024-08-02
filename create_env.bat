@echo off

where conda > nul 2>nul
if %errorlevel% neq 0 (
    echo "Anaconda not found, trying pip ..."
    where pip > nul 2>nul
    if %errorlevel% neq 0 (
        echo "pip not found, please install Anaconda or pip first."
        exit /b
    ) else (
        pip install -r requirements.txt
        exit /b
    )
    exit /b
) else (
    conda create -n zjuweblogin python=3.11 --file requirements.txt --yes
)



