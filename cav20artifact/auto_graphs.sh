#!/bin/bash

set -e # Abort if one of the commands fail

echo
echo "Generating results for the tables in Figure 2"

# investors graph
echo
echo "Fig 2(a) Future markets investor"
echo "Plot 1 (CSG)"
prism-games two_investors_csg.prism two_investors.props -prop 2 -const months=1:1:9 | grep Result:
echo "Plot 2 (TSG)"
prism-games two_investors_tsg.prism two_investors.props -prop 2 -const months=1:1:9 | grep Result:

# robots graph
echo
echo "Fig 2(b) Robot co-ordination"
echo "Plot 1 (Equilibria)"
prism-games robot_coordination.prism robot_coordination.props -prop 2 -const q=0.1,l=10,k=9:1:14 | grep Result:

# repudiation graph
echo
echo "Fig 2(c) Non-repudiation"
echo "Plot 1 (PTPG)"
prism-games repudiation_malicious1.prism repudiation_malicious1.props -prop 1 -const p=0.1,K=0:1:20 | grep Result:
echo "Plot 2 (PTA)"
prism-games repudiation_malicious1.prism repudiation_malicious1.props -prop 2 -const p=0.1,K=0:1:20 | grep Result:

# public good graph
echo
echo "Fig 2(d) Public good game"
echo "Plots 1 + 2 combined (Player 1 + Player 2)"
prism-games public_good_game.prism public_good_game.props -prop 1 -const kmax=2,emax=200,einit=4,f=1.6:0.01:1.8 | grep "Coalition results"
