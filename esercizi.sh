find "/usr/include" -mindepth 2 -maxdepth 2 -name *net.h ;

find "/usr/include" -type f  -exec head -n 3 '{}' \;

find "/usr/include" -type f  -exec head -n 3 '{}' \; | cut -b 1-3 ;

