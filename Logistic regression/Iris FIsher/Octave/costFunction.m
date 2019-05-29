function cost = costFunction(X, y, theta)
    m = size(X)(1);
    h = sigmoid(X, theta);
    cost = -1 / m * (y' * log(h) + (1 - y)' * log(1 - h));
endfunction
