system_profiler SPHardwareDataType| sysctl -a |grep machdep.cpu.brand_string | sed 's/machdep.cpu.brand_string/CPU/'> Specs.txt

system_profiler SPMemoryDataType| sed '/Empty/d'| sed '/Type/d'| sed '/Speed/d'| sed '/Status/d'| sed '/Part Number/d'>> Specs.txt
system_profiler SPStorageDataType | grep "Device Name" |sed 's/Device Name/Disk/'>> Specs.txt
system_profiler SPDisplaysDataType | grep "Chipset Model" |sed 's/Chipset Model/Card Graphic/'>> Specs.txt