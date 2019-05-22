D = load('iris_data.txt');
m = size(D)(1);
X = [ones(m,1),D(:,1:4)];
theta = zeros(m,1);