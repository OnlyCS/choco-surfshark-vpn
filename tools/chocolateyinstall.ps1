$ErrorActionPreference = 'Stop'

$packageArgs = @{
	packageName    = $env:ChocolateyPackageName
	fileType       = 'EXE'
	url            = 'https://downloads.surfshark.com/windows/latest/SurfsharkSetup.exe'

	softwareName   = 'surfshark-vpn*'

	checksum       = 'a4946a55cc79b4bb32ab9d47a898a82f2e2704f788e335c388454b3d4b533df1'
	checksumType   = 'sha256'

	silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).ExeInstall.log`""
	validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

















