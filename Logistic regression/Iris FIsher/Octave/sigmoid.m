function s = sigmoid(X, theta)
    z = X * theta;
    s = 1 ./ (1 + exp(-z)); % pay attention to element wise division !
endfunction
