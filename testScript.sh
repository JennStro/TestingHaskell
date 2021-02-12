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

#ghci
expect startGHCI.sh

echo "${lightPurple}--------------- TESTS ---------------\n"

result="out.txt"

while IFS= read -r line
do
  [[ "$line" == *"True"* ]] && echo "${lightGreen}* PASSED${reset}" || echo "${lightRed}* FAILED${reset}"
done < "${result}"


echo "\n${lightPurple}-------------------------------------\n"

