function sum_vector =  compiled_sum(vec)
sum_vector = zeros(1, length(vec));
% sum_vector(1) = vec(1);
    for i=2:length(vec)
        sum_vector(i) = vec(i) + sum_vector(i-1);
    end
end