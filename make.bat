@echo off

chcp 65001 >nul

set THESIS=main

if "%~1" == "" (
    set flag=all
) else (
    set flag=%1
)

if not "%flag%" == "all" if not "%flag%" == "clean" if not "%flag%" == "count" (
    call :help
    goto :EOF
)

if "%flag%" == "all" (
    if exist "error.log" (
        del "error.log"
    )
    call :all
    if ERRORLEVEL 1 (
        copy "%THESIS%.log" "error.log" >nul
        call :clean
        echo Error! Please check error.log for more details.
    ) else (
        call :clean
        echo Done.
    )
    goto :EOF
)

if "%flag%" == "clean" (
    call :clean
    echo.
    echo Done.
    goto :EOF
)

if "%flag%" == "count" (
    call :count
    goto :EOF
)

:all
    set TEXINPUTS=style;%TEXINPUTS%
    set BIBINPUTS=bib;%BIBINPUTS%
    latexmk -lualatex -synctex=1 -quiet -interaction=nonstopmode -file-line-error -halt-on-error -shell-escape %THESIS% 2>nul
goto :EOF

:clean
    latexmk -quiet -c %THESIS% 2>nul
    del /q "%THESIS%.bbl" "%THESIS%.glo" "%THESIS%.gls" "%THESIS%.gz" "%THESIS%.synctex.gz" "%THESIS%.hd" "%THESIS%.loa" "%THESIS%.run.xml" "%THESIS%.thm" "%THESIS%.xdv" 2>nul
    rmdir /s /q "_minted-%THESIS%"
goto :EOF

:count
    set found=0
    setlocal enabledelayedexpansion
    findstr "\\documentclass\[[^\[]*en" %THESIS%.tex > nul
    if %errorlevel% equ 0 (
        for /f "delims=" %%i in ('texcount %THESIS%.tex -inc -char-only  2^>nul') do (
            if !found! equ 1 (
                echo 英文字符数:!%%i!
                goto :total
            )
            echo %%i | findstr "total" > nul && set found=1
        )
    ) else (
        for /f "delims=" %%i in ('texcount %THESIS%.tex -inc -ch-only  2^>nul') do (
            if !found! equ 1 (
                echo 中文字符数:!%%i!
                goto :total
            )
            echo %%i | findstr "total" > nul && set found=1
        )
    )

:total
    set found=0
    for /f "delims=" %%i in ('texcount %THESIS%.tex -inc -chinese 2^>nul') do (
        if !found! equ 1 (
            echo 文档总字数:!%%i!
            goto :EOF
        )
        echo %%i | findstr "total" > nul && set found=1
    )
goto :EOF

:help
    echo Usage: make [options]
    echo.
    echo Options:
    echo   - all      Use lualatex to compile the LaTeX document.
    echo   - clean    Clean temporary files.
    echo   - count    Count the number of words in the document.
    echo   - help     Show this help message.
    echo.
    echo Note: make without any option is equivalent to make all.
goto :EOF

exit /B 0