=======TASK 2========

1)output of spike version:
spike --version
spike 1.1.0
2)Output of riscv64:riscv64-unknown-elf-gcc -v



riscv64-unknown-elf-gcc -v
Using built-in specs.
COLLECT_GCC=riscv64-unknown-elf-gcc
COLLECT_LTO_WRAPPER=/usr/lib/gcc/riscv64-unknown-elf/13.2.0/lto-wrapper
Target: riscv64-unknown-elf
Configured with: ../gcc-13.2.0/configure --build=x86_64-linux-gnu --prefix=/usr --includedir='/usr/lib/include' --mandir='/usr/lib/share/man' --infodir='/usr/lib/share/info' --sysconfdir=/etc --localstatedir=/var --disable-option-checking --disable-silent-rules --libdir='/usr/lib/lib/x86_64-linux-gnu' --libexecdir='/usr/lib/lib/x86_64-linux-gnu' --disable-maintainer-mode --disable-dependency-tracking --enable-languages=c,c++ --prefix=/usr/lib --infodir=/usr/share/doc/gcc-riscv64-unknown-elf/info --mandir=/usr/share/man --htmldir=/usr/share/doc/gcc-riscv64-unknown-elf/html --pdfdir=/usr/share/doc/gcc-riscv64-unknown-elf/pdf --bindir=/usr/bin --libexecdir=/usr/lib --libdir=/usr/lib --with-system-zlib --enable-multilib --disable-decimal-float --disable-libffi --disable-libgomp --disable-libmudflap --disable-libquadmath --disable-libssp --disable-libstdcxx-pch --disable-libstdc++-v3 --disable-nls --disable-shared --disable-threads --with-arch=rv64imafdc --enable-tls --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=riscv64-unknown-elf --with-gnu-as --with-gnu-ld --with-headers=no --without-newlib --with-pkgversion=13.2.0-11ubuntu1+12 --without-included-gettext SED=/bin/sed SHELL=/bin/sh BASH=/bin/bash CONFIG_SHELL=/bin/bash AR_FOR_TARGET=riscv64-unknown-elf-ar AS_FOR_TARGET=riscv64-unknown-elf-as LD_FOR_TARGET=riscv64-unknown-elf-ld NM_FOR_TARGET=riscv64-unknown-elf-nm OBJDUMP_FOR_TARGET=riscv64-unknown-elf-objdump RANLIB_FOR_TARGET=riscv64-unknown-elf-ranlib READELF_FOR_TARGET=riscv64-unknown-elf-readelf STRIP_FOR_TARGET=riscv64-unknown-elf-strip ASFLAGS= ASFLAGS_FOR_BUILD= CFLAGS='-g -O2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -ffile-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=. -fstack-protector-strong -fstack-clash-protection -fcf-protection -fdebug-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=/usr/src/gcc-riscv64-unknown-elf-12' 'CFLAGS_FOR_BUILD=-g -O2' CPPFLAGS='-Wdate-time -D_FORTIFY_SOURCE=3' CPPFLAGS_FOR_BUILD= CXXFLAGS='-g -O2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -ffile-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=. -fstack-protector-strong -fstack-clash-protection -fcf-protection -fdebug-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=/usr/src/gcc-riscv64-unknown-elf-12' 'CXXFLAGS_FOR_BUILD=-g -O2' DFLAGS=-frelease DFLAGS_FOR_BUILD=-frelease FCFLAGS='-g -O2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -ffile-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=. -fstack-protector-strong -fstack-clash-protection -fcf-protection -fdebug-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=/usr/src/gcc-riscv64-unknown-elf-12' 'FCFLAGS_FOR_BUILD=-g -O2' FFLAGS='-g -O2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -ffile-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=. -fstack-protector-strong -fstack-clash-protection -fcf-protection -fdebug-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=/usr/src/gcc-riscv64-unknown-elf-12' 'FFLAGS_FOR_BUILD=-g -O2' LDFLAGS='-Wl,-Bsymbolic-functions -Wl,-z,relro -Wl,-z,now' LDFLAGS_FOR_BUILD= OBJCFLAGS='-g -O2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -ffile-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=. -fstack-protector-strong -fstack-clash-protection -fcf-protection -fdebug-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=/usr/src/gcc-riscv64-unknown-elf-12' 'OBJCFLAGS_FOR_BUILD=-g -O2' OBJCXXFLAGS='-g -O2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -ffile-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=. -fstack-protector-strong -fstack-clash-protection -fcf-protection -fdebug-prefix-map=/build/gcc-riscv64-unknown-elf-dBf63N/gcc-riscv64-unknown-elf-12=/usr/src/gcc-riscv64-unknown-elf-12' 'OBJCXXFLAGS_FOR_BUILD=-g -O2' INHIBIT_LIBC_CFLAGS=-DUSE_TM_CLONE_REGISTRY=0 'CFLAGS_FOR_TARGET=-Os -mcmodel=medany' 'CXXFLAGS_FOR_TARGET=-Os -mcmodel=medany'
Thread model: single
Supported LTO compression algorithms: zlib
gcc version 13.2.0 (13.2.0-11ubuntu1+12)
3)Compile commands used:
riscv64-unknown-elf-gcc -O0 -g -march=rv64imac -mabi=lp64 \
-DUSERNAME="\"$U\"" -DHOSTNAME="\"$H\"" -DMACHINE_ID="\"$M\"" \
-DBUILD_UTC="\"$T\"" -DBUILD_EPOCH=$E \
factorial.c -o factorial

riscv64-unknown-elf-gcc -O0 -g -march=rv64imac -mabi=lp64 \
-DUSERNAME="\"$U\"" -DHOSTNAME="\"$H\"" -DMACHINE_ID="\"$M\"" \
-DBUILD_UTC="\"$T\"" -DBUILD_EPOCH=$E \
maxarray.c -o max_array

riscv64-unknown-elf-gcc -O0 -g -march=rv64imac -mabi=lp64 \
-DUSERNAME="\"$U\"" -DHOSTNAME="\"$H\"" -DMACHINE_ID="\"$M\"" \
-DBUILD_UTC="\"$T\"" -DBUILD_EPOCH=$E \
bitops.c -o bitops

riscv64-unknown-elf-gcc -O0 -g -march=rv64imac -mabi=lp64 \
-DUSERNAME="\"$U\"" -DHOSTNAME="\"$H\"" -DMACHINE_ID="\"$M\"" \
-DBUILD_UTC="\"$T\"" -DBUILD_EPOCH=$E \
bubble_sort.c -o bubble_sort

4)All output screenshots given in this repository include the ProofID and RunID for traceability.
These identifiers are visible in every screenshot without obstruction.
Their presence confirms the authenticity and origin of each captured result.
