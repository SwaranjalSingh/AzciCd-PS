# $array = "sun","mon","tue"

# foreach($col in $array)
# {
#     Write-Output $col
# }

function foo {
    param (
        $v1 , $v2
    )
    Write-Host($v1+$v2)
}

foo 2 3

$filecontent = Get-Content .\1.ps1
write $filecontent