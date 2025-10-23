#!/bin/bash
myarray=(python java c++ bash perl R JS)
echo ${myarray[@]}

for((i=0;i<5;i++)){
    echo "Fuck You! "
}

for i in 1 2 3 4 5 6 7 8 9
do
  echo "Iteration" $i
  if [ $i == 7 ]
  then
  echo "My fav number"
  fi
done

for((i=0;i<6;i++)){
    echo ${myarray[i]}
}


i=0
while [ $i -le 4 ];
do
  echo "Yes"
  let i++
done

i=0
until [ $i -ge 3 ];
do
  echo "No"
  echo $(($i*5))
  let i++
done


for((i=0;i<20;i++)){
  echo $i
  if [ $i -eq 5 ]
  then
  break
  fi
}

for((i=0;i<10;i++)){
  if [ $i -gt 5 ]
  then
  continue
  fi
  echo $i
}