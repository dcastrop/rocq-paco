#!/bin/sh

if [ $# -lt 1 ]
then
  echo "Usage: $0 relsize"
  exit 1
fi

PACOSRCDIR=../src

relsize=$1

python3 paco.py ${relsize} > $PACOSRCDIR/paco${relsize}.v;
python3 gpaco.py ${relsize} > $PACOSRCDIR/gpaco${relsize}.v;
echo "From Paco Require Export paco${relsize}." >> $PACOSRCDIR/pacoall.v;
echo "From Paco Require Export gpaco${relsize}." >> $PACOSRCDIR/gpacoall.v;
