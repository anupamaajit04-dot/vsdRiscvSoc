=======TASK 1=======
1. Source File: unique_test.c

2. Compile Command Used: riscv64-unknown-elf-gcc -O2 -Wall -march=rv64imac -mabi=lp64 \
-DUSERNAME="$(id -un)" -DHOSTNAME="$(hostname -s)" \
unique_test.c -o unique_test

3. Output from spike pk ./unique_test: 
RISC-V Uniqueness Check 
RISC-V Uniqueness Check  
User: vboxuser  
Host: vsdworkshop2  
UniqueID: 0xfa476d8f90315613  
GCC_VLEN: 6  

