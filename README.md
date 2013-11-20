Argsort for MATLAB / Octave
==============

Author      : Seungwhan (Shane) Moon

Description : Return the indices of the sorted vector. This is equivalent to the argsort function that NumPy supports.

MATLAB / Octave do not support argsort as a native function (http://mathesaurus.sourceforge.net/matlab-numpy.html)

Last Update : November 10, 2013

Filename	: argsort.m

Input
  - M    : Vertical vector of size [m X 1] to be sorted
  - mode : 'ascend' or 'descend'

Usage
  - indices = argsort(M)
  - indices = argsort(M, mode)
  - [indices, sorted_M] = argsort(M, ...)

Example
  - M = [4; 1; 3; 5];
  - argsort(M, 'descend')
  - ans = 
      4
      1
      3
      2
