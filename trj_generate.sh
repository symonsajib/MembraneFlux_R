#!/bin/bash

rm atomnumber

for ((i = 0 ; i < 5000 ; i=i+500)); do 
  #extracting trajaectories in every 20ns 
  mkdir Dir$i
  trjconv -f trajall.xtc -o Dir$i/conf$i.gro -n index.ndx -b $i -e $i
  
  #copying necessary files to dir
  cp conf$i.gro Dir$i
  cp index.ndx Dir$i
  cp selection.dat Dir$i
  cp topol.tpr Dir$i
  cp grompp.mdp Dir$i
  cp topol.top Dir$i
  cp *itp Dir$i
  cp a1.c Dir$i
  
  #grompp and selecting the water in the targeted region 
  cd Dir$i
  grompp -f grompp.mdp -c conf$i.gro -p topol.top -n index.ndx
  g_select -f conf$i.gro -s topol.tpr -sf selection.dat -n index.ndx -on between.ndx
  
  #deleting the first line of the generted index
  sed -i 1d between.ndx
  
  #keeping only the whole waters & printing the numbers
  gcc a1.c -o a1.out
  echo "NS_$i"  > atoms
  ./a1.out >> atoms

  #appending the time and water numbers in a single file
  cat atoms >> ../atomnumber

 cd ../
done
}



          
