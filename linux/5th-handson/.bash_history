ls
export PS1="\[\e[36m\]\u\[\e[m\]@\h-\w:\[\e[31m\]\\$\[\e[m\] "
clear
mkdir filters | cd filters
mkdir filters && cd filters
ls
cd filters
clear
ls
vim days.txt
cat days.txt 
clear
cat days.txt | cat | cat | cat | cat
nano count.txt
clear
cat count.txt 
clear
tac count.txt | tee temp.txt | tac
clear
ls
cat temp.txt 
tac temp.txt
clear
ls -l | tee mysfiles.txt | find *.txt
cat mysfiles.txt 
ls
clear
cat > tennis.txt
export PS1="\[\e[36m\]\u\[\e[m\]@\h-\w:\[\e[31m\]\\$\[\e[m\] "
ls
cd filters/
ls
cl
clear
cat tennis.txt 
cat tennis.txt | grep Williams
cat tennis.txt | grep us
clear
ls -l
ls -l | cut -d' ' -f3
clear
cat /etc/passwd
cl
clear
cut -d: -f1 /etc/passwd
cleaar
clear
cat << EOF > clarusway.txt
Clarusway:Road to reinvent yourself.
EOF

cat clarusway.txt 
clear
cat clarusway.txt 
cat clarusway.txt | tr aer QAZ
CLEAR
cat count.txt | tr '\n' ' '
ls
cat tennis.txt | tr '\n' ' '
cat tennis.txt 
clear
cat tennis.txt | tr '\n' ' ' | cat > ten.txt
ls
cat ten.txt
clear
ls
cat clarusway.txt | tr -d aeiou
cat clarusway.txt | tr [a-z] [A-Z] | tee clara.txt
cat clara.txt 
cat clarusway.txt | tr [a-z] [A-Z] | tee clara.txt | tac
cat clara.txt 
tac clara.txt | tee >> clara.txt | tac
cat clara.txt 
clear
wc count.txt 
cat count.txt 
clear
wc -w count.txt 
wc -r count.txt 
wc --help
wc -L count.txt 
cat count.txt 
clear
cat << EOF > marks.txt
aeron-9
albert-9
james-9
john-10
oliver-7
tom-7
victor-10
walter-8
EOF

cat marks.txt 
sort marks.txt 
vim marks.txt 
cat marks.txt 
sort marks.txt 
cat marks.txt 
sort marks.txt | tee copymarks.txt
ls
cat copymarks.txt 
clear
sort  -r marks.txt 
clear
cat << EOF > trainees.txt
john
james
aeron
oliver
walter
albert
james
john
travis
mike
aeron
thomas
daniel
john
aeron
oliver
mike
john
EOF

cat trainees.txt 
sort trainees.txt | uniq 
sort trainees.txt | uniq | cat > uniq.txt
cat uniq.txt 
clear
cat << EOF > file1.txt
Aeron
Bill
James
John
Oliver
Walter
EOF

clear
cat << EOF > file2.txt
Guile
James
John
Raymond
EOF

ls
clear
sort file1.txt file2.ftxt | com file1.txt file2.txt
sort file1.txt file2.ftxt | comm file1.txt file2.txt
comm file1.txt file2.txt
clear
cat << EOF > countries.csv
Country,Capital,Continent
USA,Washington,North America
France,Paris,Europe
Canada,Ottawa,North America
Germany,Berlin,Europe
EOF

cat countries.csv 
cut -d, -f2
cut -d, -f2 | cat countries.csv 
clear
cat countries.csv | cut -d, -f3 | tail -4 | sort | uniq | cat > continent.txt
ls
clear
cat days.txt ; cat count.txt
clear
echo Hello ; echo World!
sleep 3
clear
sleep 20 & 
ls -l
cat count.txt
clear
ls 
$?
echo $?
clear
dfdfdf
echo $?
lls 
echo $?
ls
clear
cp file1.txt file11.txt
rm file11.txt && echo 'it worked' || echo 'it failed'
echo '# is the comment sign' # echo command displays the string comes after it.
echo # is the comment sign
echo \# is the comment sign
clear
cho The special characters are \*, \\, \", \#, \$, \'.
echo The special characters are \*, \\, \", \#, \$, \'.
clear
ls
clear
find clarusway.doc
find clarusway.doc || cat clarusway.doc
find clarusway.doc ; cat clarusway.doc
find clarusway.doc ; cat clarusway.doc && echo "Too early"
find clarusway.doc || cat clarusway.doc
clear
find -name clarusway.doc && cat clarusway.doc || echo "too early" && echo "Congratulations" > clarusway.doc | find -name claruway.doc && cat clarusway.doc 
history > cat 071321_5th_handson.txt
history > tee 071321_5th_handson.txt
history >  071321_5th_handson.txt
history | 071321_5th_handson.txt
