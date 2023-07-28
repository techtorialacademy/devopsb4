#!/bin/bash

num1=8
num2=3
#In order to do arithmetic operations, operations should be place in the $((operation))
#Perform addition
sum=$((num1+num2))
echo "Addition: $num1 + $num2 = $sum"

#Perform subtraction
sub=$((num1-num2))
echo "Subtraction: $num1 - $num2 = $sub"

#Perform division
div=$((num1/num2)) #Division result will be displayed in integer values like 1,2,3,4,5,6,...,10,.............,75,......
echo "Division: $num1 / $num2 = $div"

#Perform multiplication
multi=$((num1*num2))
echo "Multiplication: $num1 * $num2 = $multi"

#Perform exponentiation #-> 2 ** 3 -> 2 * 2 * 2  and 5**2 -> 5 * 5 and 3 **4 -> 3 * 3 * 3 *3 
expo=$((num1**num2))
echo "Exponentiation: $num1 ** $num2  = $expo"

#Modulus Operator # It finds remaining after the perfect division 
# Such as there are 6 children and you want to give total of 20 chocalate  equally. Everyone MUST get the 
#same amount of chocalate -> How many chocalate will you have left with after giving the children? 
remaining=$((num1%num2))
echo "Remainder: $num1 % $num2 = $remaining" #num1 is 8 num2 is 3 so what will be the result?  2

#Using bc for arithmetical operations
#Using bc will allow us to get decimal results from the arithmetical operations. 
#bc will take inputs from the shell output therefore usage of bc is echo "num + num2" | bc
#If you want to display decimal points for the division
#scale option should be used for decimal division. Scale determines how many decimal numbers will be displayed. 
decdiv=$(echo "scale=2; $num1 / $num2" | bc)
echo "Decimal division: $num1 / $num2 = $decdiv"

#Since the bc command expects its input from standard input(stdin), that's why echo is used to calculate with bc. 
#We cannot put any space before or after the = sign when creating a variable. 


