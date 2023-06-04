function locationExists = exists(filename, location)
%EXISTS Check if specified group or dataset exists in a .h5 file.
%
% DESCRIPTION:
%     exists checks whether the specified group or dataset exists within a
%     .h5 file.
%
% USAGE:
%     h5tools.exist(filename, location)
%
% INPUTS:
%     filename       - HDF5 filename.
%     location       - Group or dataset to check for.
%
% OUTPUTS:
%     locationExists - Logical true if location exists, false otherwise.

% Copyright (C) 2023- University College London (Bradley Treeby).

arguments
    filename char {mustBeFile, mustBeH5File(filename)}
    location char
end

try
    h5info(filename, location);
    locationExists = true;
catch
    locationExists = false;
end
