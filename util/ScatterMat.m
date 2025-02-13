function [Sw, Sb] = ScatterMat(X, y)
[dim, ~] = size(X);
nclass = length(unique(y));

mean_X = mean(X, 2);
Sw = zeros(dim, dim);
Sb = zeros(dim, dim);

for i = 1:nclass
    inx_i = find(y==i);
    X_i = X(:, inx_i);
    
    mean_Xi = mean(X_i, 2);
    Sw = Sw + cov(X_i', 1);
    Sb = Sb + length(inx_i)*(mean_Xi-mean_X)*(mean_Xi-mean_X)';
end
end