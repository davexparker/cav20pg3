This directory contains the artifact for the PRISM-games 3.0 paper at CAV 2020.

Contents:
* cav20artifact contains files/logs to reproduce results in the paper
* cav20pg3-vm.txt contains details of the VM and its construction
* cav20pg3.pdf is the final version of the tool paper

The PRISM-games tool itself is installed in the VM at /home/cav20/prism-games.


RUNNING PRISM-GAMES 3.0
=======================

To check that the tool runs, just type:

 prism-games

(since there are symlinks to the main launch scripts in /home/cav20/bin)

This will simply display some version info.
For a simple test of the new functionality, try:

 cd /home/cav20/prism-games/prism-examples/csgs/simple
 prism-games medium_access2.prism -const emax=2,q1=0.9,q2=0.75 medium_access2.props -prop 2

which runs the example from the tool paper.
You should eventually see: "Result: 1.98"

You can also run the GUI version of the tool of preferred:

 xprism-games medium_access2.prism medium_access2.props


REPRODUCING RESULTS IN THE PAPER
================================

The graphs in Figure 2 are intended to showcase the main new features of the tool.
To reproduce these results, run the script:

 cd /home/cav20/cav20pg3/cav20artifact
 bash auto_graphs.sh

The PRISM-games model and property files needed are also in this cav20artifact directory.
Similarly, there are .csv files containing the values generated and plotted.
We also include log files for these running in the logs-graph subdirectory.

We also provide a similar script to generate the results from Table 1.
This is in auto_table.sh, but this requires more RAM than is available in the VM (2GB).
Approximately 8GB is need, so if you wish to run these, extend the VM'S RAM.
Some of these are relatively slow to run, so instead we include all the log files.
These are in /home/cav20/cav20pg3/cav20artifact/logs-table.


OTHER EXAMPLES + DOCUMENTATION
==============================

To explore PRISM-games 3.0 further, there are additional examples in:

 /home/cav20/prism-games/prism-examples/csgs
 /home/cav20/prism-games/prism-examples/tptgs

Further information and guidance about case studies,
and for documentation about the tool itself, see the web site:

 http://www.prismmodelchecker.org/games/

To compile a fresh install from source, see e.g.

 /home/cav20/prism-games/prism/etc/scripts/prism-install-ubuntu


SOURCE CODE
===========

The version of PRISM-games in the VM is compiled from source.
It is installed in /home/cav20/prism-games.
Compilation can be achieved with: cd /home/cav20/prism-games/prism; make
The source code is all within /home/cav20/prism-games/prism/src.

The public release of this version of the source code is at:

 https://github.com/prismmodelceckwer/prism-games/tag/v3.0
 
 
