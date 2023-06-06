$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Say-Hello" {
   It "Outputs Hello Tom, Welcome to Pester" {
Say-Hello -name Tom | Should Be 'Hello Tom, Welcome to Pester'
    }
}
