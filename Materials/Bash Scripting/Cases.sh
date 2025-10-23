#!/bin/bash
read -p "Enter your grade " grade
case $grade in
    A)
      echo "your mark is greater than 90"
      ;;
    B)
      echo "your mark is between 81-90"
      ;;
    C)
      echo "your mark is between 71-80"
      ;;
    D)
      echo "your mark is lower than 70"
      ;;
    *)
      echo "invalid input!"
      ;;   
esac