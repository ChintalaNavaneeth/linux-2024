# https://www.hackerrank.com/challenges/bash-tutorials-read-in-an-array/problem?isFullScreen=true
#Given a list of countries, each on a new line, your task is to read them into an array and then display the entire array, with a space between each of the countries' names.
while read line
do
    arr=(${arr[@]} $line)
done

echo ${arr[@]}


# https://www.hackerrank.com/challenges/bash-tutorials-slice-an-array/problem?isFullScreen=true
# Given a list of countries, each on a new line, your task is to read them into an array. Then slice the array and display only the elements lying between positions 3 and 7, both inclusive. Indexing starts from from 0.
arr=($(cat))
echo ${arr[@]:3:5}

# https://www.hackerrank.com/challenges/bash-tutorials-filter-an-array-with-patterns/problem?isFullScreen=true
# You are given a list of countries, each on a new line. Your task is to read them into an array and then filter out (remove) all the names containing the letter 'a' or 'A'.
arr=($(cat))
echo ${arr[@]/*[aA]*/}

# https://www.hackerrank.com/challenges/bash-tutorials-concatenate-an-array-with-itself/problem?isFullScreen=true
#Given a list of countries, each on a new line, your task is to read them into an array. Then, concatenate the array with itself (twice) - so that you have a total of three repetitions of the original array - and then display the entire concatenated array, with a space between each of the countries' names
arr=($(cat))
arr=("${arr[@]}" "${arr[@]}" "${arr[@]}")
echo ${arr[@]}

# https://www.hackerrank.com/challenges/bash-tutorials-display-the-third-element-of-an-array/problem?isFullScreen=true
# Given a list of countries, each on a new line, your task is to read them into an array and then display the element indexed at . Note that indexing starts from 0.
arr=($(cat))
echo ${arr[3]}

# https://www.hackerrank.com/challenges/bash-tutorials-count-the-number-of-elements-in-an-array/problem?isFullScreen=true
#Given a list of countries, each on a new line, your task is to read them into an array and then display the count of elements in that array.
arr=($(cat))
echo ${#arr[@]}

# https://www.hackerrank.com/challenges/bash-tutorials-remove-the-first-capital-letter-from-each-array-element/problem?isFullScreen=true
#You are given a list of countries, each on a new line. Your task is to read them into an array and then transform them in the following way:The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). Then, display the entire array with a space between each country's names.
arr=($(cat))
echo ${arr[@]/[A-Z]/.}


# https://www.hackerrank.com/challenges/lonely-integer-2/problem?isFullScreen=true
#There are N integers in an array A. All but one integer occur in pairs. Your task is to find the number that occurs only once
read
arr=($(cat)) 
echo "${arr[@]}" | tr ' ' '\n' |sort | uniq -u | tr '\n' ' '

