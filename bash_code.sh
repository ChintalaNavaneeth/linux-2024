#!/bin/bash

# https://www.hackerrank.com/challenges/bash-tutorials---looping-with-numbers/problem?isFullScreen=true
for ((i=1; i<=50; i++))
do
    echo "$i"
done

# https://www.hackerrank.com/challenges/bash-tutorials---the-world-of-numbers/problem?isFullScreen=true
read X
read Y

echo $((X + Y))  
echo $((X - Y))  
echo $((X * Y))  

if [ "$Y" -ne 0 ]; then
    echo $((X / Y)) 
fi

# https://www.hackerrank.com/challenges/bash-tutorials---comparing-numbers/problem?isFullScreen=true
# Read two integers
read X
read Y

# Compare the two integers and output the result
if [ "$X" -lt "$Y" ]; then
    echo "X is less than Y"
elif [ "$X" -gt "$Y" ]; then
    echo "X is greater than Y"
else
    echo "X is equal to Y"
fi


# https://www.hackerrank.com/challenges/bash-tutorials---getting-started-with-conditionals/problem?isFullScreen=true
# Read one character from input
read -n 1 char

# Check the character and display the appropriate response
if [[ "$char" == "Y" || "$char" == "y" ]]; then
    echo "YES"
elif [[ "$char" == "N" || "$char" == "n" ]]; then
    echo "NO"
fi


# https://www.hackerrank.com/challenges/bash-tutorials---more-on-conditionals/problem?isFullScreen=true
# Read three integers as the sides of the triangle
read A
read B
read C

# Determine the type of triangle
if [[ "$A" -eq "$B" && "$B" -eq "$C" ]]; then
    echo "EQUILATERAL"
elif [[ "$A" -eq "$B" || "$B" -eq "$C" || "$A" -eq "$C" ]]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi


# https://www.hackerrank.com/challenges/bash-tutorials---arithmetic-operations/problem?isFullScreen=true
read x
printf "%.3f\n" `echo "$x" | bc -l`

# https://www.hackerrank.com/challenges/bash-tutorials---compute-the-average/problem?isFullScreen=true
read N
sum=0
for ((i=0; i<N; i++));  do
    read num 
    sum=$((sum + num))
done
avg=$(echo "scale=4; $sum / $N" | bc)
printf "%0.3f" $avg
