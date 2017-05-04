Paul Turner, "Testing for Cointegration Using the Johansen Approach: Are We
Using the Correct Critical Values?" Journal of Applied Econometrics,
Vol. 24, No. 5, 2009, pp. 825-831.

All files are ASCII files in DPS format and are zipped in the file
pt-files.zip. Unix/Linux users should use "unzip -a".

The data file 'turner-data.txt' contains the data for the examples used in
Section II of the paper. These data are randomly generated numbers using the
EViews random number generator and the data generation process described in
the paper.

The text file 'turner-code.txt' contains the programme code which was used
to generate the simulations described in the paper. This runs using the
EViews programming language. The version used in this paper is version 5.1
but it should run using later versions. Note that user has to reset the PSS
critical values to those for case V when choosing EViews option (e) in the
Johansen procedure. The PSS critical values in this case are:

  scalar tracecrit1 = 23.94
  scalar eigcrit1 = 18.55
  scalar tracecrit2 = 11.64
  scalar eigcrit2 = 11.64

Paul Turner
February 2009
