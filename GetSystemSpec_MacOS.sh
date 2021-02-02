system_profiler SPHardwareDataType| sysctl -a |grep machdep.cpu.brand_string | sed 's/machdep.cpu.brand_string/CPU/'>CauHinh.txt

system_profiler SPMemoryDataType| sed '/Empty/d'| sed '/Type/d'| sed '/Speed/d'| sed '/Status/d'| sed '/Part Number/d'>>CauHinh.txt
system_profiler SPStorageDataType | grep "Device Name" |sed 's/Device Name/Disk/'>>CauHinh.txt
system_profiler SPDisplaysDataType | grep "Chipset Model" |sed 's/Chipset Model/Card Graphic/'>>CauHinh.txt