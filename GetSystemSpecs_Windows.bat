@echo off


setlocal
	(
	:: Get ComputerName, Mainboard
	WMIC COMPUTERSYSTEM GET name, model
	:: Get CPU
	WMIC CPU GET Name
	:: Get RAM
	WMIC MEMORYCHIP GET Manufacturer, SerialNumber, PartNumber
	:: Get DISK
	WMIC DISKDRIVE GET SerialNumber, Model
	:: Get Card Graphic
	WMIC PATH Win32_VideoController GET name
	) 
	
	pause
endlocal
goto :eof