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

$subdirs

If ($subdirs.Count -eq 1) {
    cd $subdirs
    .\build.ps1
    cd ..
}
Else {
    for ($i = 0; $i -lt $subdirs.Count; $i++) {
        cd $subdirs[$i]
        .\build.ps1
        cd ..
    }
}
