# https://www.hackerrank.com/challenges/text-processing-sort-1/problem?isFullScreen=true
#Output the text file with the lines reordered in lexicographical order. 
sort

# https://www.hackerrank.com/challenges/text-processing-sort-2/problem?isFullScreen=true
#Output the text file with the lines reordered in reverse lexicographical order. 
sort -r

# https://www.hackerrank.com/challenges/text-processing-sort-3/problem?isFullScreen=true
#Output the text file with the lines reordered in numerically ascending order.
sort -n

# https://www.hackerrank.com/challenges/text-processing-sort-4/problem?isFullScreen=true
#The text file, with lines re-ordered in descending order (numerically).
sort -n -r

# https://www.hackerrank.com/challenges/text-processing-sort-5/problem?isFullScreen=true
#Rearrange the rows of the table in descending order of the values for the average temperature in January (i.e, the mean temperature value provided in the second column) in a tab seperated file. 
# Explanation of the options:
# -k2:

# This specifies the key to sort on.
# k2 means the sort will be based on the second column in the input.
# -n:

# Numeric sort.
# This treats the column values as numbers, ensuring correct numerical sorting rather than lexicographical (e.g., 9 comes before 10).
# -r:

# Reverse order.
# This reverses the sorting order, so it will sort in descending order instead of ascending.
# -t$'\t':

# Field separator.
# $'\t' is a tab character, meaning columns are separated by tabs. The sort command will use tabs to determine where one column ends and the next begins.
sort -k2 -n -r -t$'\t'

# https://www.hackerrank.com/challenges/text-processing-sort-6/problem?isFullScreen=true
#The data has been sorted in ascending order of the average monthly temperature in January (i.e, the second column) in a tsv file
sort -n -k2 -t$'\t'

# https://www.hackerrank.com/challenges/text-processing-sort-7/problem?isFullScreen=true
#The data has been sorted in descending order of the average monthly temperature in January (i.e, the second column). 
sort -k2 -n -r -t '|'

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-1/problem?isFullScreen=true
#Given a text file, remove the consecutive repetitions of any line.
uniq

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-2/problem?isFullScreen=true
#Given a text file, count the number of times each line repeats itself. Only consider consecutive repetitions. Display the space separated count and line, respectively. There shouldn't be any leading or trailing spaces. Please note that the uniq -c command by itself will generate the output in a different format than the one expected here. 
uniq -c | cut -c7- 

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-3?isFullScreen=true
#compare consecutive lines in a case insensitive manner. So, if a line X is followed by case variants, the output should count all of them as the same (but display only the form X in the second column).
uniq -i -c | cut -c7-

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-4/problem?isFullScreen=true
#Given a text file, display only those lines which are not followed or preceded by identical replications. 
uniq -u