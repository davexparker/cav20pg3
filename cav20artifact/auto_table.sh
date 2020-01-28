#!/bin/bash

set -e # Abort if one of the commands fail

echo
echo "Generating results for Table 1"

echo
echo "WARNING: This needs more than the 2GB of RAM in this VM"
echo "You will need to increase the RAM to ~8GB to run all these"
echo "Or try the (smaller) examples in auto_graphs.sh instead"

# robots table
echo
echo "Robot co-ordination (writing to logs directory)"
prism-games robot_coordination.prism robot_coordination.props -prop 1 -javamaxmem 8g -const q=0.1,l=20,k=20 >| logs/robot_coordination_zero20_20.log
prism-games robot_coordination.prism robot_coordination.props -prop 2 -javamaxmem 8g -const q=0.1,l=25,k=25 >| logs/robot_coordination_nonzero_25_25.log

# investors table
echo
echo "Futures market investor (writing to logs directory)"
prism-games two_investors_csg.prism two_investors.props -prop 2 -javamaxmem 8g -const months=36 >| logs/two_invester_csg36.log
prism-games two_investors_nash.prism two_investors_nash.props -prop 1 -javamaxmem 8g -const pbar=0.2,months=36 >| logs/two_invester_nash36.log

# user centric
echo
echo "User centric network (writing to logs directory)"
prism-games trust_csg.prism trust_csg.props -javamaxmem 8g -prop 1 -const td=1,K=9 >| logs/trust9.log

# aloha table
echo
echo "Aloha (writing to logs directory)"
prism-games aloha_backoff3.prism aloha_backoff3.props -javamaxmem 8g -prop 1 -const D=0,bcmax=5,q=0.9 >| logs/aloha_backoff3_zero5.log
prism-games aloha_backoff3.prism aloha_backoff3.props -javamaxmem 8g -prop 2 -const D=0,bcmax=6,q=0.9 >| logs/aloha_backoff3_nonzero6.log

# task graph
echo
echo "Task graph scheduling (writing to logs directory)"
prism-games task_graph_prob_fault.prism task_graph.props  -javamaxmem 8g -const k1=12,k2=12,p=0.1 -prop 2 >| logs/task_graph_prob_fault12.log
