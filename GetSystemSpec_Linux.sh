sudo lshw -short > system.txt
grep 'system' system.txt > specs.txt
grep 'process' system.txt >> specs.txt
grep 'memory.*MHz' system.txt >> specs.txt
grep 'disk' system.txt >> specs.txt
grep 'display' system.txt >> specs.txt
rm system.txt
