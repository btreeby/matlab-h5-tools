% Unit test for h5tools.copyGroup. Creates two hdf5 files, copies a group
% containing a dataset from one to other, and verifies the dataset is
% correct.

% Copyright (C) 2023- University College London (Bradley Treeby).

classdef test_copyGroup < matlab.unittest.TestCase
    properties
        fromFile = 'testFrom.h5';
        toFile = 'testTo.h5';

        groupFile1 = 'testGroup1';
        datasetFile1 = 'testDataset1'
        groupFile2 = 'testGroup2';
        datasetFile2 = 'testDataset2'
        
        dimsFile1 = [3, 5]
        dataFile1
        dimsFile2 = [4, 2]
        dataFile2
    end
    
    methods (TestMethodSetup)

        % Create two HDF5 files, both containing a group with a dataset.
        function createH5Files(testCase)
            testCase.dataFile1 = rand(testCase.dimsFile1);
            testCase.dataFile2 = rand(testCase.dimsFile2);

            h5create(testCase.fromFile, ['/' testCase.groupFile1 '/' testCase.datasetFile1], testCase.dimsFile1);
            h5write(testCase.fromFile, ['/' testCase.groupFile1 '/' testCase.datasetFile1], testCase.dataFile1);

            h5create(testCase.toFile, ['/' testCase.groupFile2 '/' testCase.datasetFile2], testCase.dimsFile2);
            h5write(testCase.toFile, ['/' testCase.groupFile2 '/' testCase.datasetFile2], testCase.dataFile2);
        end

    end

    methods (TestMethodTeardown)

        % Delete the created HDF5 files.
        function deleteH5Files(testCase)
            delete(testCase.fromFile);
            delete(testCase.toFile);
        end

    end

    methods(Test)

        % Copy a dataset from one file to another, and verify the copied
        % dataset is correct.
        function testValidInput(testCase)
            h5tools.copyGroup(testCase.fromFile, testCase.toFile, testCase.groupFile1);

            dataOut = h5read(testCase.toFile, ['/' testCase.groupFile1 '/' testCase.datasetFile1]);
            testCase.verifyEqual(dataOut, testCase.dataFile1);
        end
        
    end

end
