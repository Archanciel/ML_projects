D = load('iris_data.txt');
[m,n] = size(D);
classNb = 3; % Iris Setosa == 1, Iris Versicolour == 2, Iris Virginica == 3
p = 0.70; % proportion of training data

m = size(D)(1);
n = size(D)(2) - 1;
[trainingDataCellVector, testingDataCellVector] = splitData(D, m, n + 1, p, classNb);

TrainingData_1 = cell2mat(trainingDataCellVector(1));
TrainingData_2 = cell2mat(trainingDataCellVector(2));
TrainingData_3 = cell2mat(trainingDataCellVector(3));

TestingData_1 = cell2mat(testingDataCellVector(1));
TestingData_2 = cell2mat(testingDataCellVector(2));
TestingData_3 = cell2mat(testingDataCellVector(3));

[m, n] = size(TrainingData_1);
X = [ones(m,1), TrainingData_1(:,1:n - 1)];
y = TrainingData_1(:, n);

% plotData(X, y)

initial_theta = zeros(n,1);
return
% Set Options
options = optimset('GradObj', 'on', 'MaxIter', 400);

% Optimize
[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunction(X, y1, t)), initial_theta, options);

theta
J
