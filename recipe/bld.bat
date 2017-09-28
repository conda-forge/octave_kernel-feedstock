@echo off

%PYTHON% setup.py install --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1

%PYTHON% -m octave_kernel install --prefix %PREFIX% > NUL 2>&1
if errorlevel 1 exit 1

