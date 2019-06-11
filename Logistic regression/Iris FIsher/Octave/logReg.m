D = load('iris_data.txt');
[m,n] = size(D);
p = 0.70;
idx = randperm(m); % filling a vector with randomly permuted 1 to m values 
trainingDataIndexes = idx(1:round(p*m));
testingDataIndexes = idx(round(p*m) + 1:end);
TrainingData = D(trainingDataIndexes,:); 
TestingData = D(testingDataIndexes,:);

m = size(D)(1);
n = size(D)(2) - 1;
X = [ones(m,1),D(:,1:n)];
n = n + 1; 
y1 = [ones(50, 1); zeros(100,1)];
y2 = [zeros(50,1); ones(50, 1); zeros(50,1)];
y3 = [zeros(100, 1); ones(50,1)];
initial_theta = zeros(n,1);
return
% Set Options
options = optimset('GradObj', 'on', 'MaxIter', 400);

% Optimize
[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunction(X, y1, t)), initial_theta, options);

theta
J
