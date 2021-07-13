# Hands-on Linux-05 : Filters and Control Operators
​
Purpose of the this hands-on training is to teach the students how to use filters and control operators in Linux.
​
## Learning Outcomes
​
At the end of the this hands-on training, students will be able to;
​
- Use filter commands.
​
- Pipe commands.
​
- Use Control operators.
​
## Outline
​
- Part 1 - Using Filters
​
- Part 2 - Using Control Operators
​
## Part 1 - Using Filters
​
**cat**
​
- Create a folder and name it filters.
​
```bash
mkdir filters
cd filters
```
- Create a `text` file named `days.txt`.
​
```bash
vim days.txt
```
​
```bash
Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday
```
- Display the content of days.txt.
```bash
cat days.txt
```
- Show what cat command does when used in a pipe.
​
```bash
cat days.txt | cat | cat | cat | cat
```
- Create a `text` file named `count.txt`.
​
```bash
nano count.txt
```
```text
one
two
three
four
five
six
seven
eight
nine
ten
eleven 
```
- Display the content of count.txt.
```bash
cat count.txt
```
**tee**
​
- Write the content of the count.txt file in reverse order to another file named temp.txt and display the content of temp.txt in reverse order.
```bash
tac count.txt | tee temp.txt | tac
```
- Check whether the temp.txt file created and display the content.
​
```bash
ls
cat temp.txt
```
- Create a file named 'myfiles.txt' from the output of 'ls -l' command and display the .txt files.
​
```bash
ls -l | tee myfiles.txt | find *.txt
```
- Check whether the myfiles.txt file created and display the content.
​
```bash
ls
cat myfiles.txt
```
**grep**
​
- Create a `text` file named `tennis.txt`.
​
```bash
cat > tennis.txt
​
Amelie Mauresmo, Fra
Justine Henin, BEL
Serena Williams, USA
Venus Williams, USA
```
>**press ctrl+d for EOF**
​
- Display the content of tennis.txt.
```bash
cat tennis.txt
```
- Display only the lines of tennis.txt that includes 'Williams'.
​
```bash
cat tennis.txt | grep Williams
```
- Display only the lines of tennis.txt that includes 'us'.
​
```bash
cat tennis.txt | grep us
```
- Display the owners column (3rd column) of all the files in current directory.
​
**cut**
​
```bash
ls -l | cut -d' ' -f3
```
- Display the content of /etc/passwd directory.
​
```bash
cat /etc/passwd
```
- Display only the usernames.
​
```bash
cut -d: -f1 /etc/passwd
```
**tr**
​
- Create a `text` file named `clarusway.txt`.
​
```bash
cat << EOF > clarusway.txt
Clarusway:Road to reinvent yourself.
EOF
```
- Display the content of clarusway.txt.
​
```bash
cat clarusway.txt
```
- In the content of clarusway.txt, replace or translate aer letters with 'QAZ'.
​
```bash
cat clarusway.txt | tr aer QAZ
```
​
- Write the content of count.txt on the same line.
​
```bash
cat count.txt | tr '\n' ' '
```
​
- Delete all the vowels in the content of clarusway.txt.
​
```bash
cat clarusway.txt | tr -d aeiou
```
​
- Write the whole content of clarusway.txt in capital letters.
​
```bash
cat clarusway.txt | tr [a-z] [A-Z]
```
**wc**
​
- Count the lines, words and letters of the content of count.txt.
​
```bash
wc count.txt
```
- Find how many users are there in the computer.
```bash
wc -l /etc/passwd
```
**sort**
​
- Create a `text` file named `marks.txt`.
​
```bash
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
```
- Display the content of marks.txt.
​
```bash
cat marks.txt
```
- Sort the content of marks.txt.
​
```bash
sort marks.txt
```
- Sort the content of marks.txt in reverse order.
​
```bash
sort -r marks.txt
```
**uniq**
​
- Create a `text` file named `trainees.txt`.
​
```bash
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
```
- Display the content of trainees.txt.
​
```bash
cat trainees.txt
```
- Display only the unique names in the content of trainees.txt.
​
******before using uniq command, the file must be sorted******
​
```bash
sort trainees.txt | uniq
```
**comm**
​
- Create a `text` file named `file1.txt`.
​
```bash
cat << EOF > file1.txt
Aeron
Bill
James
John
Oliver
Walter
EOF
```
- Create another `text` file named `file2.txt`.
​
```bash
cat << EOF > file2.txt
Guile
James
John
Raymond
EOF
```
- Compare file1.txt and file2.txt.
​
******before using comm command, files must be sorted******
​
```bash
comm file1.txt file2.txt
```
- EXERCISE:
​
  - Create a file named `countries.csv`.
​
```bash
cat << EOF > countries.csv
Country,Capital,Continent
USA,Washington,North America
France,Paris,Europe
Canada,Ottawa,North America
Germany,Berlin,Europe
EOF
```
  - Cut only 'Continent' column | Remove header | Sort the output | List distinct values | Save it to 'continent.txt' and display on the screen.
​
```bash
********************************
```
## Part 2 - Using Control Operators
​
>**;**
​
- Write two seperate cat command on the same line using ;.
​
```bash
cat days.txt ; cat count.txt 
```
```bash
echo Hello ; echo World! 
```
>**&**
​
- Run sleep 10 command and show that the kernel is busy until the process of this command ends.
​
```bash
sleep  10
```
- Run sleep 20 command and let this command work behind while you're running other commands.
​
```bash
sleep  20 &
ls -l
cat count.txt
cat days.txt
```
>**$?**
​
- Run ls command and show that it is executed successfully.
​
```bash
ls
echo $?
```
- Run lss command and show that it failed.
​
```bash
lss
echo $?
```
>**&&**
​
- Display days.txt and if it runs properly display count.txt.
​
```bash
cat days.txt && cat count.txt
```
- Display days.text and if it runs properly display count.txt.
​
```bash
cat days.text && cat count.txt
```
>**||**
​
- Display days.txt or write 'clarusway' on the screen, then write 'one'.
​
```bash
cat days.txt || echo clarusway ; echo one
```
- Write 'first' or write 'second' on the screen, then write 'third'.
​
```bash
echo first || echo second ; echo third
zecho first || echo second ; echo third
```
>**&& and ||**
​
- Make a copy of file1.txt and named it file11.txt.
​
```bash
cp file1.txt file11.txt
```
- Delete file11.txt and write a message if it is deleted properly.
​
```bash
rm file11.txt && echo 'it worked' || echo 'it failed'
```
- Run the last command again.
​
```bash
rm file11.txt && echo 'it worked' || 'it failed'
```
>**#**
​
- Run the echo command and add a comment line.
​
```bash
echo '# is the comment sign' # echo command displays the string comes after it.
echo # is the comment sign
echo \# is the comment sign
```
>** \ **
​
- Run a single command on multipe lines.
​
```bash
echo this command is written \
not only on a single line \
but also on multiple lines.
```
- Write the following sentence on the screen: The special characters are *, \, ", #, $, '.
​
```bash
echo The special characters are \*, \\, \", \#, \$, \'.
```
- EXERCISE:
​
  1.a. Search for “clarusway.doc” in the current directory
    b. If it exists display its content
    c. If it does not exist print message “Too early!”
  2.Create a file named “clarusway.doc” that contains “Congratulations”
  3.Repeat Step 1
​
```bash
********************************
```