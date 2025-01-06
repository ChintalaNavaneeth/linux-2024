#!/bin/bash

sentence = """ 
                1   New York, New York[10]  8,244,910   1   New York-Northern New Jersey-Long Island, NY-NJ-PA MSA  19,015,900  1   New York-Newark-Bridgeport, NY-NJ-CT-PA CSA 22,214,083
                2   Los Angeles, California 3,819,702   2   Los Angeles-Long Beach-Santa Ana, CA MSA    12,944,801  2   Los Angeles-Long Beach-Riverside, CA CSA    18,081,569
                3   Chicago, Illinois   2,707,120   3   Chicago-Joliet-Naperville, IL-IN-WI MSA 9,504,753   3   Chicago-Naperville-Michigan City, IL-IN-WI CSA  9,729,825
                4   Houston, Texas  2,145,146   4   Dallas-Fort Worth-Arlington, TX MSA 6,526,548   4   Washington-Baltimore-Northern Virginia, DC-MD-VA-WV CSA 8,718,083
                5   Philadelphia, Pennsylvania[11]  1,536,471   5   Houston-Sugar Land-Baytown, TX MSA  6,086,538   5   Boston-Worcester-Manchester, MA-RI-NH CSA   7,601,061
        """

# https://www.hackerrank.com/challenges/text-processing-cut-1/problem?isFullScreen=true
# print the 3rd character from each line as a new line of output.
cut -c 3

# https://www.hackerrank.com/challenges/text-processing-cut-2/problem?isFullScreen=true
# Display the 2nd and 7th character from each line of text. 
cut -c 2,7

# https://www.hackerrank.com/challenges/text-processing-cut-3/problem?isFullScreen=true
# Display a range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included)
cut -c 2-7

# https://www.hackerrank.com/challenges/text-processing-cut-4/problem?isFullScreen=true
# Display the first four characters from each line of text. 
cut -c -4

# https://www.hackerrank.com/challenges/text-processing-cut-5/problem?isFullScreen=true
# Given a tab delimited file with several columns (tsv format) print the first three fields.
cut -f 1-3

# https://www.hackerrank.com/challenges/text-processing-cut-6/problem?isFullScreen=true
# Print the characters from thirteenth position to the end.
cut -c 13-

# https://www.hackerrank.com/challenges/text-processing-cut-7/problem?isFullScreen=true
# For each input sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words. 
cut -d " " -f 4

# https://www.hackerrank.com/challenges/text-processing-cut-8/problem?isFullScreen=true
# The output should contain N lines. For each input sentence, identify and display its first three words. Assume that the space (' ') is the only delimiter between words. 
cut -d " " -f 1-3

# https://www.hackerrank.com/challenges/text-processing-cut-9/problem?isFullScreen=true
# For each line in the input, print the fields from second fields to last field. 
cut -f 2-

# https://www.hackerrank.com/challenges/text-processing-head-1/problem?isFullScreen=true
#Output the first 20 lines of the given text file. 
head -20

# https://www.hackerrank.com/challenges/text-processing-head-2/problem?isFullScreen=true
#Output the first 20 characters of the text file
head -c 20

# https://www.hackerrank.com/challenges/text-processing-in-linux---the-middle-of-a-text-file/problem?isFullScreen=true
#Display the lines (from line number 12 to 22, both inclusive) for the input file. 
head -22 | tail -11

# https://www.hackerrank.com/challenges/text-processing-tail-1/problem?isFullScreen=true
#Output the last 20 lines of the text file. 
tail -20

# https://www.hackerrank.com/challenges/text-processing-tail-2/problem?isFullScreen=true
#Display the last 20 characters of an input file.
tail -c 20

# https://www.hackerrank.com/challenges/text-processing-tr-1/problem?isFullScreen=true
#Output the text with all parentheses () replaced with box brackets []. 
tr "()" "[]"

# https://www.hackerrank.com/challenges/text-processing-tr-2/problem?isFullScreen=true
#In a given fragment of text, delete all the lowercase characters a - z.
tr -d "a-z"

# https://www.hackerrank.com/challenges/text-processing-tr-3/problem?isFullScreen=true
#Replace all sequences of multiple spaces with just one space.
tr -s ' '
