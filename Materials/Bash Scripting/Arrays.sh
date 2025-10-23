#!/bin/bash
namelist=(mahdi mamad jafar asghar);
echo ${namelist[0]}
echo ${namelist[*]}
echo ${namelist[@]:1:3}