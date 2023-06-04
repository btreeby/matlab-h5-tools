# Matlab H5 Tools

[![View matlab-h5-tools on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://uk.mathworks.com/matlabcentral/fileexchange/129974-matlab-h5-tools) ![test workflow](https://github.com/btreeby/matlab-h5-tools/actions/workflows/main.yml/badge.svg) [![codecov](https://codecov.io/github/btreeby/matlab-h5-tools/branch/main/graph/badge.svg?token=5RFTK1TVCY)](https://codecov.io/github/btreeby/matlab-h5-tools)

## Overview

**Matlab H5 Tools** provides a collection of tools for working with [Hierarchical Data Format version 5 (HDF5) files](https://www.hdfgroup.org/solutions/hdf5/). MATLAB already provides excellent support for HDF5 files with both [high-level and low-level access functions](https://uk.mathworks.com/help/matlab/hdf5-files.html). The primary purpose of this library is to provide additional high-level functions that simplify actions that are currently only supported via the low-level interface. 

The project also serves as a simple example of a MATLAB toolbox that uses the MATLAB [class-based unit testing framework](https://uk.mathworks.com/help/matlab/class-based-unit-tests.html) with continuous integration and code coverage running automatically using GitHub actions.

## Installation

The tools can be installed directly from the MATLAB Add-On Explorer. Select Add-Ons and search for **Matlab H5 Tools**, then select Add, Add to MATLAB.

## Usage

The functions are contained within the `h5tools` namespace. After installing, the functions can be called by pre-pending the namespace, e.g., `h5tools.copyGroup(...)`.

## Tests

Tests are written using the MATLAB testing framework and are contained in the `tests` folder (this is only visible if cloning from GitHub, rather than installing from MATLAB). The tests are executed automatically every push to the repository. The tests can be executed locally using `runtests('path/to/matlab-h5-tools/tests');`.

## Related tools

There are many excellent related projects on GitHub with similar goals. In particular, [h5tools-matlab](https://github.com/sarastokes/h5tools-matlab) has a very extensive set of high-level tools. 
