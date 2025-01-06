str = """ From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory:
But thou contracted to thine own bright eyes,
Feed'st thy light's flame with self-substantial fuel,
Making a famine where abundance lies,
Thy self thy foe, to thy sweet self too cruel:
Thou that art now the world's fresh ornament,
And only herald to the gaudy spring,
Within thine own bud buriest thy content,
And tender churl mak'st waste in niggarding:
Pity the world, or else this glutton be,
To eat the world's due, by the grave and thee.
When forty winters shall besiege thy brow,
And dig deep trenches in thy beauty's field,
Thy youth's proud livery so gazed on now,
Will be a tattered weed of small worth held:
Then being asked, where all thy beauty lies,
Where all the treasure of thy lusty days;
To say within thine own deep sunken eyes,
Were an all-eating shame, and thriftless praise.
How much more praise deserved thy beauty's use,
If thou couldst answer 'This fair child of mine
Shall sum my count, and make my old excuse' """

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-1/problem?isFullScreen=true
#Output only those lines that contain the word 'the'. The search should be case sensitive. The relative ordering of the lines in the output should be the same as it was in the input.
grep -w "the"

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-2/problem?isFullScreen=true
# Output only those lines that contain the word 'the'. The search should NOT be case sensitive. The relative ordering of the lines in the output should be the same as it was in the input.

grep -iw "the"

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-3/problem?isFullScreen=true
# Only display those lines that do NOT contain the word 'that'. The relative ordering of the lines should be the same as it was in the input file.

grep -iv "that"

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-4/problem?isFullScreen=true
#We retain only those lines which have at least one of the following words: 
# the 
# that 
# then 
# those
grep -iwe "the\|that\|then\|those"


# https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-5/problem?isFullScreen=true
grep '\([0-9]\) *\1'

# ----------------------------------------------------------------- SED -----------------------------------------------------------------

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-sed-command-1/problem?isFullScreen=true
sed -e 's/the /this /1'

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-sed-command-2/problem?isFullScreen=true
sed -e 's/thy /your /gI'

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-sed-command-3/problem?isFullScreen=true
sed -e 's/thy/{&}/gI'

# https://www.hackerrank.com/challenges/sed-command-4/problem?isFullScreen=true
sed -r 's/[0-9]{4}[ ]/**** /g'

# https://www.hackerrank.com/challenges/sed-command-5/problem?isFullScreen=true
sed -E 's/([0-9]{4}) ([0-9]{4}) ([0-9]{4}) ([0-9]{4})/\4 \3 \2 \1 /g' 

# ----------------------------------------------------------------- AWK ----------------------------------------------------------------- 

# https://www.hackerrank.com/challenges/awk-1/problem?isFullScreen=true
awk '{ if(length($4) == 0) print "Not all scores are available for " $1 }'

# https://www.hackerrank.com/challenges/awk-2/problem?isFullScreen=true
awk '{ print $1 ($2 < 50 || $3 < 50 || $4 < 50 ? " : Fail" : " : Pass") }'

# https://www.hackerrank.com/challenges/awk-3/problem?isFullScreen=true
awk '{ total=$2+$3+$4; avg=total/3; print $0 " : " (avg > 50 ? avg > 60 ? avg > 80 ? "A" : "B" : "C" : "FAIL"); }'

# https://www.hackerrank.com/challenges/awk-4/problem?isFullScreen=true
awk 'END{ if((NR%2)) print p ";" }!(NR%2){ print p ";" $0 }{ p = $0 }'