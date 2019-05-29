function grad = gradient(X, y, theta)
    m = size(X)(1);
    h = sigmoid(X, theta);

    grad = ((h - y)' * X) .* (1 / m);
endfunction
