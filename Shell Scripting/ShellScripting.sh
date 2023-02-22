1. What is shell
--------------------
Shell is an environment in whch we can excute our commands ,prorgroms and shell scripts. it gatheer's the input from the user and excute that prorgroms based on that 
input.when a prorgom compltes it's excution it displays that output.

* Shell Script are intrpreted by the Operating system but not complied.


Which type of shell script will support by ur operating systems
-----------------------------------------------------------------
cat /etc/shells (take a look on it).


How can we see Where bash is located
-------------------------------------
which bash

*ls -al ----> To see files permisson step by step.  [-rw-rw-r--] --> read&write for you,read&write for group,read only for user.


* code .  ---> To open visuval studio code.


*while we create a file using touch command it has only "Read & Write" permission is there but not excutbale permisson.

Comments::--> Comments are lines of code which is not excuted by the script but are helpfull to know information about our scripts.


How can write commnts :: ----->     # followed by lines of code.

TO RUN A SCRIPT ::
==================

1.  ./scriptname.bash 

2. bash scriptname.bash



types of shell
--------------
1.Bourne shell(sh)
2.Korn shell(ksh)
3.Bourne again shell(Bash)
4.POSIX shell(sh)
5.C shell(csh)
6.rbash

#!/bin/bash---->Identifies which shell is going to intreprete script 

#---Hash     !---->Bang    ------> #!--->shebang ---->/bin/bash ----> path


To Give excutable permison
----------------------------

one file :: chmod +x filename.sh

to all files :: chmod +x * [it will give excutable permisson to all the files in that dir]

======================================================================================================================================================================

2.VARIBALES 
---------------
Containers for storatingthe values.

Two Types of varibales
-----------------------
1.Sytem varibale ---> Crted and mainted by linux/unix o.s  .....Defined in CAPITAL LETTERS.(These are sytsem varaibles)
ex:: $BASH ,$BASH_VERSION $PWD $HOME.


2.Userdefined varible.----> cerated and mainted by the user.-----> defined in the small letters.

ex:: name="shesh" echo $name


HOW To Take INPUT FROM USER / TERMINAL 
-----------------------------------------

By using the read command we can acces the input  from the user.

Example :: echo "Enter your name : "
            read name


Allow user to enter input on same line 
----------------------------------------
read -p[ p flag which allow us to enter a input on sameline ] 

ex:: read -p "username" : user_var

echo "username" $user_var


U dont want to see what the user is typing 
-------------------------------------------
 "read -sp " ---> use this -sp flag ...wht ever user is typing it is invisible to other's


How to read array of names 
---------------------------

by using the "-a" flag 

ex:: echo "enter your names : "
     read -a names 

  echo "the names are "${names[0]}","${names[1]}"


What happens if we do not read the varible names
-------------------------------------------------

it will store that varible name in $REPLY  [ it is built in varible]

======================================================================================================================================================================

3.HOW TO PASS ARGUMENTS TO SCRIPT
--------------------------------

ex: echo $0,$1,$2,$3 ' > echo $1 ,$2,$3'

echo ("$@") ---> it will store array of elemnts

How could you know nuber of arguents passed
-----------------------------------------------

by using this   echo $# 

=====================================================================================================================================================================

4. IF-STATEMENT
------------------

syntax ::
--------

if [ condition ]
then
	echo stement
else
	echo steemnt

fi----> indicated end of if-condition


COMPARIOSN OPERATOR'S
----------------------

Integer comaprison
-------------------
1. -eq -------> is equal to ----> if [ "$a" -eq "$b" ]

2. -ne  ------> is not equal to ----> if [ "$a" -ne "$b" ]

3. -gt -------> is greater than ----> if [ "$a" -gt "$b" ]

4. -ge -------> is greater than or equal to ---> if ["$a" -ge "$b" ]

5. -lt -------> is less than ------------> if [ "$a" -lt "$b" ]

6. -le  ------> is less than or equal to ----------> if [ "$a" -le "$b" ] 


7. < ---->  is less than --->  (("$a" < "$b"))

8. <= ---> is less tahn or equal to ---->   (("$a" <= "$b"))

9. > ----> is greter than    ------------> (("$a" > "$b")

10. >= ---> is greter than or equal to ----> (("$a" >= "$b"))



String Comparision
-------------------
1. =  -----> is equal to  ----> if ["$a" = "$b" ]

2. == ------> is equal to  --> if ["$a" == "$b" ]

3. != ------> is not equal to  --> if ["$a" != "$b" ]

4. < -------> is less tahn , in alphabetical ascci order  -----> if [ "$a" < "$b" ]

5. < -------> is greater tahn , in alphabetical ascci order  -----> if [ "$a" > "$b" ]

6. -z ----> string is null or string has the zero length

===================================================================================================================================================================
5.File Test Operators
------------------------

\c ----> To keep the cursor on the same line at the end of the echo .

-e ---> enable the intrpretion of that \c .  and -e flag is used to check whether the file exists or not.

-f ---> it is used to check if file exists and it will check it is regular file or not.

-d ----> to check the directory is present of not.

Ex :: echo -e " Enter the file name :   \c"


Files are of two types
----------------------

1.Blocks special file ---> it is a binary file   ex:: picture file , video,music     [ flag is -b ] 

2.Characters special file ----> it is a normal file it conatins some text or data     [ flag is -c ]



-s flag ----> it checks whether the  file is empty or not .

-r flag  -----> to check whther the file has read permisson

-w flag  -----> to check whther the file has write permisson

-x flag  -----> to check whther the file has excute permisson

ls -l ---> we can see the list of files & file size also.

==================================================================================================================================================================

7 - How to append output to the end of text file
-------------------------------------------------

to remove permison for exisisting file ---> chmod -w test

to give permison for exisisting file ---> chmod +w test


ex::
-----
#!/bin/bash 

echo -e "emnter the file name : \c "

read file_name 

if [ -f $file_name ]
then
	if [ -w $file_name]
	then
		echo "Type some text date.to quit ctril+d
		cat >>
	else
         fi
else
then
	echo $file_name doesnt exists
fi

================================================================================================================================================================

8.Logical AND with if-stament
-------------------------------

AND -----> && [Represents like this ]

ex:: age=25

if [ $age -gt 18 ] && [ $age -lt 30 ]

or if [ $age -gt 18 -a $age -lt 30 ] 


==============================================================================================================================================================

9.Loical Or 
-------------

|| _----> Logical or [pipe symbol ]


ex :: if [ $age -gt 18 ] || [ $age -lt 30 ]

or if [ $age -gt 18 -o $age -lt 30 ] 

==============================================================================================================================================================

10.Perform arithmetic operations
---------------------------------
a=10
b=5
addtion ---> echo $(( a + b ))

subtraction ---> echo $ (( a - b ))

Mul   --------> echo $(( a * b ))

Div ----------> echo $(( a / b ))

modulas ------> echo $(( a % b ))


      or 

addtion ---> echo (expr $a + $b )

subtraction ---> echo (expr $a - $b )

Mul   --------> echo (expr $a * $b )

Div ----------> echo (expr $a / $b )

modulas ------> echo (expr $a % $b )

==================================================================================================================================================================

11. Floating point math operations in bash | bc Command
---------------------------------------------------------

BC Command 
------------
Refer Geekforgeeks 

to excute the floating point numbers
-------------------------------------

we need to use the bc command 

echo "20.5+5" | bc























ASSINING A VARIBALES
=====================
we can use varibales in any progromming languages. it will store as strings. but in shell scritping varibles will also be used as the mathematical operations that will
convert varibles into the numbers for caluculations.

we don't need to declare a variable . just we need to assign a value to it.

ex:: #!/bin/bash 

str="sheshadri reddy"
echo $str

* $ we can retirve the value of a varible using the $ synbol.

READ =====> This command is used to read the input from the user.

COMMAND SUBSTITUION
--------------------
#!/bin/bash

LIST=`ls`
DATE=`date`

echo "Today's date is - " $DATE
echo "list of files are " $LIST


ARITHEMETIC OPERATIONS ON VARIABLES
====================================
"LET" command can used for mathematical functions.

an arithemetic expression can be evaluated by $[expression] or $((expression)).


EXAMPLES::
========
1.Write a script to obatin a user name and his age from the input and print the year when the user would become 50 yrs of age.

#!/bin/bash

cur_yr=`date +"%Y"`
echo "enter your name: "
read NAME
echo "enter your age:"
read AGE
let fif_yr =(50-$AGE)+cur_yr
echo Hello $NAME you will be 50 years old in $fif_yr

---------------------------------------------------------------------------------------------------------------------------------------

2.write a shell script to crete a dir called test00 inside /tmp and three blank files file00 file01 file02 and list them.

#!/bin/bash
mkdir /tmp/test00/
echo dir is created inside /tmp
cd /tmp/test00
touch file01 file02 file03
ls -l
==============================================================================================================================================

                                                   SHELL SCRIPT LOOPS & ITERATIONS
						   -----------------------------------

Loops in shell script
---------------------
we can excute set of commands repatedtly

types
-----
1.while
2.for
3.until
4.select loops

--------------------------------------------------------------------------------------------------------------------------------------------------------
							
							Shell Scritping Spoofing
							-------------------------

If any one unauthorized person try's to acces the file..then we can protect our data/files by using the ("-" or "--) this is shell spoopfing.

#!/bin/bash -

#!/bin/bash --

-----------------------------------------------------------------------------------------------------------------------------------------------------------

							Shell Parameters
							-----------------

The bash shell script has the parameters.These parameters are starts from $1 to $9.

when we pass the arguments to the CLI .these positional arguments are passed thorught the parameters through the shell.

first arguemnt assigned to $1 and second arguement assined to shell $2 and so on .....

if we have more than nine shell's it can't be assigned as  $10,$11... and so on......


Shell Parameters
-----------------

$1-$9 ------> represents positional parameters for arguments from one to nine

${10}-${n}----> represents positional parameters for arguments after nine

$0    --------> represents the name of the script

$*   ---------> Represents the all the arguments as a single string.

$@   ---------> same as $*, but differ when that is enclosed in ("").

$#    --------> Represents the total number of arguments.

$$  ----------> PID of the script.

$?  ----------> represents the last return code.


SHIFT PARAMETER
---------------
it is built in command in shell scripting.this command takes number as arguemnt and shits down to the number.

ex:: $5 becomes $1 and $6 becomes 2 like this.


*Shift command mostly used when the arguements are unknown.

READ Command
-------------
allows user to provide runtime input.

echo "enter your name"
read name.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

							LOOPS & CONDITIONALS STATEMENTS
							----------------------------------

IF & ELSE SYNTAX
----------------

-gt ----> greter than

-lt ----> less than 

-le ---> less than or equal 

-ge ----> greter than or equal to.

Syntax
------                                                              
if [condition]
then
echo staement
else
echo statement
fi 

fi ---> represents the if loop termination.



#EXAMPLE
---------

echo "Enter your age":
read age

if ["$age" -ge 18];
then
	echo "Your are eligible to vote"
else
	echo "not eligible to vote"
fi


FOR LOOP
---------
for((cond1;cond2;cond3))
do
    echo stament
done









Progroms 
------------
#!/bin/bash
cur_yr=`date +"%Y"`
echo -n "enter your name:"
read NAME
echo -n "enter your age:"
read AGE
let fif_yr=(50-$AGE)+cur_yr
echo Hello $NAME you will be 50 years old in $fif_yr
#!/bin/bash
cur_yr=`date +"%Y"`
echo -n "enter your name:"
read NAME
echo -n "enter your age:"
read AGE
let fif_yr=(50-$AGE)+cur_yr
echo Hello $NAME you will be 50 years old in $fif_yr





























































