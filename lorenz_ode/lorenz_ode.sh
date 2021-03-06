#!/bin/bash
#
gcc -c lorenz_ode.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling lorenz_ode.c"
  exit
fi
rm compiler.txt
#
gcc lorenz_ode.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading lorenz_ode.o"
  exit
fi
rm lorenz_ode.o
#
mv a.out ~/binc/$ARCH/lorenz_ode
#
echo "Executable installed as ~/binc/$ARCH/lorenz_ode"
