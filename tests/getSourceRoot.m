function srcRoot = getSourceRoot()
%GETSOURCEROOT Return root folder for toolbox.
%
% DESCRIPTION:
%     getSourceRoot returns the full path to the root folder for the
%     matlab-h5-tools toolbox.
%
% USAGE:
%     srcRoot = getSourceRoot()
%
% OUTPUTS:
%     srcRoot - Root folder.

srcRoot = fileparts(fileparts(mfilename("fullpath")));
