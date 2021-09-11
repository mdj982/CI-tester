# specify all subdirectories
$subdirs = (ls -Directory | Select-Object BaseName).BaseName

<#
# specify all subdirectories beginning with CITester
$subdirs = (ls -Directory CITester* | Select-Object BaseName).BaseName
#>

<#
# specify manually
$subdirs = @(
    "1st_dir"
    "2nd_dir"
)
#>

If ($subdirs.Count -eq 1) {
    cd $subdirs
    .\run.ps1
    cd ..
}
Else {
    for ($i = 0; $i -lt $subdirs.Count; $i++) {
        cd $subdirs[$i]
        .\run.ps1
        cd ..
    }
}
