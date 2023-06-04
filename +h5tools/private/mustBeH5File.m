function mustBeH5File(filename)
%MUSTBEH5FILE Test for .h5 file extension.
%
% DESCRIPTION:
%     mustBeH5File checks for the specified file has a .h5 extension. This
%     function is intended to be used as part of function argument
%     validation.
%
% USAGE:
%     h5tools.mustBeH5File(filename)
%
% INPUTS:
%     filename - Filename to check.

% Copyright (C) 2023- University College London (Bradley Treeby).

[~, ~, ext] = fileparts(filename);
if ~strcmp(ext, '.h5')
    eid = 'h5tools:wrongExtension';
    msg = 'Filename must have .h5 extension.';
    throwAsCaller(MException(eid, msg));
end
