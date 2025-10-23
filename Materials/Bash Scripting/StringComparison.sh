#!/bin/bash

var="Yes or No"
echo $var
echo "$var"

# if [ $var == "Yes" ]; then
#         echo "Condition 1 True"
# fi

if [[ $var == "Yes" ]]; then
        echo "Condition 2 True"
fi

if [ "$var" == "Yes" ]; then
        echo "Condition 3 True"
fi

if [[ "$var" == "Yes" ]]; then
        echo "Condition 4 True"
fi


var2="*.txt"

if [ $var2 == *.txt ]; then
        echo "Condition 1 True"
fi

if [ $var2 == "*.txt" ]; then
        echo "Condition 2 True"
fi

if [ "$var2" == *.txt ]; then
        echo "Condition 3 True"
fi

if [ "$var2" == "*.txt" ]; then
        echo "Condition 4 True"
fi

if [[ $var2 == *.txt ]]; then
        echo "Condition 5 True"
fi

if [[ $var2 == "*.txt" ]]; then
        echo "Condition 6 True"
fi

if [[ "$var2" == *.txt ]]; then
        echo "Condition 7 True"
fi

if [[ "$var2" == "*.txt" ]]; then
        echo "Condition 8 True"
fi
