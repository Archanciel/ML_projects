D = load('iris_data.txt');           % array of size 150 x 5

X = D(:,1:4)';       % 150 columns of 4 rows (for 4 features)
spec = D(:,5)';      % transposed 5th column of D. vector of length 150 with species (0,1,or 2)

f = figure(2);            % plot x_i vs x_j for all combinations of i,j

subplotIndex = 1;
for i=1:3
  for j=i+1:4 % due to i-1,  nested loop starts with i == 2 !!
     % using 3 x 3 subplots ...
     subplot(3,3,subplotIndex)
     scatter(X(i,:),X(j,:),7,spec,'filled')
     xlabel(sprintf('x%g',i)); ylabel(sprintf('x%g',j))
     subplotIndex++
  end
end