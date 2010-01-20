##
##  Tasks for Pit.
##

if (-not $(get-command write-zip))
{
	throw "Could not find the command Write-Zip. Please install PowerShell Community Extensions."
}

New-Task zip "Create a ZIP of the PowerShell module" {
	$module = Test-ModuleManifest SpecialDirectories.psd1
	$filename = "SpecialDirectories-$($module.Version).zip"
	dir -recurse  | Write-Zip -Output ..\$filename
}

