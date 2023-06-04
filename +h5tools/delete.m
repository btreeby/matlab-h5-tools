function delete(filename, location)
%DELETE Delete group or dataset from a .h5 file.
%
% DESCRIPTION:
%     Deletes the specified group or dataset from a HDF5 file.
%
% USAGE:
%     h5tools.delete(filename, location)
%
% INPUTS:
%     filename - HDF5 filename.
%     location - Group or dataset to delete.

% Copyright (C) 2023- University College London (Bradley Treeby).

arguments
    filename char {mustBeFile, mustBeH5File(filename)}
    location char
end

if h5tools.exists(filename, location)
    fid = H5F.open(filename, 'H5F_ACC_RDWR', 'H5P_DEFAULT');
    H5L.delete(fid, location, 'H5P_DEFAULT');
    H5F.close(fid);
else
    warning('Specified location doesn''t exist.');
end
