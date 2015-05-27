#!/bin/bash
sed "s/^restartfreq.*/restartfreq    50/"  $* > 1.tmp.dat
sed "s/^dcdfreq.*/dcdfreq 10/" 1.tmp.dat > 2.tmp.dat
sed "s/^xstFreq.*/xstFreq 10/" 2.tmp.dat > 1.tmp.dat
sed "s/^outputEnergies.*/outputEnergies 10/" 1.tmp.dat > 2.tmp.dat
sed "s/^outputPressure.*/outputPressure 10/" 2.tmp.dat > 1.tmp.dat
sed "s/^minimize.*/minimize 10/" 1.tmp.dat > 2.tmp.dat
sed "s/^run.*/run 10/" 2.tmp.dat > 1.tmp.dat

cp 1.tmp.dat  final.tmp.dat
mv final.tmp.dat $*
