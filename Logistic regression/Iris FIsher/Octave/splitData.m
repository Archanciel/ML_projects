function [trainingDataCellVector, testingDataCellVector] = splitData(Data, m, yColIdx, p, classNb)  
    trainingDataCellVector = cell(classNb);
    testingDataCellVector = cell(classNb);
    y1RowNb = m / classNb;
    y0RowNb = m - y1RowNb;
    
    for i = 1:classNb,
        printf('<<<<<<<< ')
        i
        ClassDataY1 = Data(Data(:, yColIdx) == i, :);
        ClassDataY0 = Data(Data(:, yColIdx) != i, :);
        idxY1 = randperm(y1RowNb); % filling a vector with randomly permuted 1 to y1RowNb values 
        idxY0 = randperm(y0RowNb); % filling a vector with randomly permuted 1 to y0RowNb values 
        trainingDataIndexesY1 = idxY1(1:round(p*y1RowNb));
        trainingDataIndexesY0 = idxY0(1:round(p*y0RowNb));
        testingDataIndexesY1 = idxY1(round(p*y1RowNb) + 1:end);
        testingDataIndexesY0 = idxY0(round(p*y0RowNb) + 1:end);
        
        % extracting training and testing data
        TrainingDataY1 = ClassDataY1(trainingDataIndexesY1,:)
        size(TrainingDataY1)
        TrainingDataY0 = ClassDataY0(trainingDataIndexesY0,:)
        size(TrainingDataY0)
        TestingDataY1 = ClassDataY1(testingDataIndexesY1,:)
        size(TestingDataY1)
        TestingDataY0 = ClassDataY0(testingDataIndexesY0,:)
        size(TestingDataY0)
        
        % setting y value to 1 or 0
        TrainingDataY1(:, yColIdx) = 1
        TrainingDataY0(:, yColIdx) = 0
        TestingDataY1(:, yColIdx) = 1
        TestingDataY0(:, yColIdx) = 0
        
        trainingDataCellVector{i} = [TrainingDataY1; TrainingDataY0]
        testingDataCellVector{i} = [TestingDataY1; TestingDataY0]
    end
    
    % example unpacking the reurned data:
    % cell2mat(trainingDataCellVector(1))
endfunction
