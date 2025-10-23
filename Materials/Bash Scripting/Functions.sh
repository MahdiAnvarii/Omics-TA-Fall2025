#!/bin/bash
Hello(){
    echo "Hello Meiti"
}
Hello

sum(){
    a=$1
    b=$2
    c=$((a+b))
    echo "sum is" $c
}
sum 12 11

sum2(){
    a=$1
    b=$2
    c=$((a+b))
    return $c
}
sum2 24 17
output=$?
echo $output

demo(){
    echo "Im Meiti"
    demo2
}
demo2(){
    echo "im Mamad"
}
demo

summy(){
    echo "sum $1 and $2 is" $(($1+$2))
    subby(){
        echo "sub $1 and $2 is" $(($1-$2))
    }
    subby $1 $2
}
summy 32 11