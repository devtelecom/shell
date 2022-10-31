#!/bin/bash
VAR=shivambrabradbaarbraadbra
echo $VAR
echo "Syntax of pattern search #bra is: " ${VAR#bra*}
echo "Syntax of pattern search ##bra is: "  ${VAR##bra*}
echo "Syntax of pattern search %bra is: "  ${VAR%bra*}
echo "Syntax of pattern search %%bra is: " ${VAR%%bra*}
