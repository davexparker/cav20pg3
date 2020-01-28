This directory contains the CAV 2020 artifact submission for the PRISM-games 3.0 paper.

Contents:
* cav20artifact contains files to reproduce results in the paper
* pg3toolpaper.pdf is the submitted tool paper
* cav20pg3-vm.txt contains details of the VM and its construction

The PRISM-games tool itself is installed in the VM at /home/cav20/prism-games.


RUNNING PRISM-GAMES 3.0
=======================

To check that the tool runs, just type:

 prism-games

(since there are symlinks to the main launch scripts in /home/cav20/bin)
This will simply display some version info.

For a trivial test of the new functionality, try:

 cd /home/cav20/prism-games/prism/
 prism-games  test?



so running just `prism-games` or `xprism-games` should run the tool.



REPRODUCING RESULTS IN THE PAPER
================================

The graphs in Figure 2 are intended to showcase the main new features of the tool.
To reproduce these results, run the script:

 cd /home/cav20/cav20pg3/cav20artifact
 bash auto_graphs.sh

The PRISM-games model and property files are also in this cav20artifact directory.
Similarly, there are .csv files containing the values generated and plotted.



SOURCE CODE
===========


LOGS
====

