function coords = random_walk_2d(n)
    prob_array = rand(n,1);
    for i=1:n
        if prob_array(i) < 0.5
            coords(i) = -1;
        else
            coords(i) = 1;
        end
    end
   coords = compiled_sum(coords);
   coords(2, :) =  [1:length(coords)];
end