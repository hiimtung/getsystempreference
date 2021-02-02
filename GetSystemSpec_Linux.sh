sudo lshw -short > system.txt
grep 'system' system.txt > cauhinh.txt
grep 'process' system.txt >> cauhinh.txt
grep 'memory.*MHz' system.txt >> cauhinh.txt
grep 'disk' system.txt >> cauhinh.txt
grep 'display' system.txt >> cauhinh.txt
rm system.txt
