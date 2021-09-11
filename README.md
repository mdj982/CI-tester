- [CI-tester](#ci-tester)
  - [Basic Settings](#basic-settings)
  - [Visual Studio](#visual-studio)
    - [About Local PowerShell Execution](#about-local-powershell-execution)
  - [Ubuntu](#ubuntu)
  - [Docker](#docker)
  - [CUDA](#cuda)

# CI-tester

## Basic Settings

- Create such as `.github/workflows/foo.yaml`
- Syntax: https://docs.github.com/ja/actions/reference/workflow-syntax-for-github-actions
- Multiple jobs: https://docs.github.com/ja/actions/learn-github-actions/managing-complex-workflows

## Visual Studio

### About Local PowerShell Execution

- By default, execution policy of powershell is set as "Restricted", so that the following execution fails.
    ````powershell
    > .\foo.ps1
    ````
  To fix this problem, change execution policy by one of the following commands.
  ````powershell
  > PowerShell -ExecutionPolicy RemoteSigned .\foo.ps1 # temporally
  ````
  ````powershell
  > PowerShell Set-ExecutionPolicy RemoteSigned # permanently, required admin
  > .\foo.ps1
  ````

## Ubuntu

## Docker

## CUDA


