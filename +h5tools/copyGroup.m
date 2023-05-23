function copyGroup(fromFile, toFile, group)
%COPYGROUP Copy group from one .h5 file to another.
%
% DESCRIPTION:
%     copyGroup copies a HDF5 group and its contents from one .h5 file to
%     another. The group name must contain a preceeding / (see h5create).
%
% USAGE:
%     h5tools.copyGroup(fromFile, toFile, group)
%
% INPUTS:
%     fromFile  - Filename to copy from.
%     toFile    - Filename to copy to.
%     group     - Group to copy.

% Copyright (C) 2023- University College London (Bradley Treeby).

arguments
    fromFile char {mustBeFile}
    toFile char {mustBeFile}
    group char
end

ocpl = H5P.create("H5P_OBJECT_COPY");
lcpl = H5P.create("H5P_LINK_CREATE");
H5P.set_create_intermediate_group(lcpl, true);

fidFrom = H5F.open(fromFile, "H5F_ACC_RDWR", "H5P_DEFAULT");
gidFrom = H5G.open(fidFrom, "/");

fidTo = H5F.open(toFile, "H5F_ACC_RDWR", "H5P_DEFAULT");
gidTo = H5G.open(fidTo, "/");

H5O.copy(gidFrom, group, gidTo, group, ocpl, lcpl);

H5G.close(gidFrom);
H5F.close(fidFrom);

H5G.close(gidTo);
H5F.close(fidTo);

H5P.close(lcpl);
H5P.close(ocpl);
