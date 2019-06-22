D = load('iris_data.txt');           % array of size 150 x 5
n = size(D, 2) - 1;
X = D(:,1:n)';      % 150 columns of 4 rows (for 4 features)
y = D(:,5)';        % transposed 5th column of D. vector of length 150 with yies (0,1,or 2)

f = figure(2);      % plot x_i vs x_j for all combinations of i,j
subplotIndex = 0;

for i=1 : n - 1
  for j=i+1 : n
     % using 3 x 3 subplots ...
     subplotIndex = ((i - 1) * (n - 1)) + j - 1;
     subplot(n - 1, n - 1, subplotIndex)
     scatter(X(i,:), X(j,:), 7, y, 'filled')
     xlabel(sprintf('x%g',i)); 
     ylabel(sprintf('x%g',j))
  end
end