#!/bin/sh

lightBlue='\x1B[1;34m'
lightRed='\x1B[1;31m'
lightGreen='\x1B[1;32m'
lightPurple='\x1B[1;35m'
reset='\x1B[0m'

# To execute run "./testScript.sh"
echo "${lightBlue}_____________________________________________________${reset}"
echo ""
echo "${lightBlue}   Hello! Starting testing. ${reset}"
echo "${lightBlue}_____________________________________________________${reset}"
echo ""

rm "out.txt"

#ghci
expect startGHCI.sh

printf "${lightPurple}----------------------------------- TESTS -----------------------------------\n\n${reset}"

result="out.txt"

while IFS= read -r line
do
  resultOfTest=$(IFS=" " ; set -- $line ; echo $1)
  [[ "$resultOfTest" == *"True"* ]] && printf "${lightGreen}PASSED${reset}: " || printf "${lightRed}FAILED${reset}: "
  echo "$line" | cut -d ' ' -f 2-
  echo ""
done < "${result}"


printf "${lightPurple}-------------------------------------------------------------------------------\n"

