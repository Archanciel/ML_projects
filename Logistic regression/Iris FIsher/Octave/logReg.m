D = load('iris_data.txt');
[m,n] = size(D);
classNb = 3; % Iris Setosa == 1, Iris Versicolour == 2, Iris Virginica == 3
p = 0.70; % proportion of training data

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
