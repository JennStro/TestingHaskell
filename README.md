## Tests for Haskell 


### testScript.sh 
Run [testScript.sh](testScript.sh) to run the tests. Runs [startGHCI.sh](startGHCI.sh) as an expect script and interacts with ghci to run the tests. The file doing testing must be given in startGHCI.sh, and the function doing the testing must be named "test". 

Import Tester and use the testmethods. The results are written to "out.txt" and displayed in the terminal. An example of how to create your tests is shown in [example.hs](example.hs).


![](example.png)

This is a side-project so I may be adding more features in the future. 

<sup><sub>Feel free to use and copy this software, at your own risk.</sub></sup>
