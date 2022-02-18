function conCATenated_array = cocnatenate_unequal(bird_struct)
    size_array = zeros(1, length(bird_struct));
    for i=1:length(bird_struct)
        size_array(i) = length(bird_struct(i).pathdiffs);
    end
    max_size = max(size_array);
    for j=1:length(bird_struct)
        bird_struct(j).pathdiffs(end+1:max_size) = nan;
    end
    conCATenated_array = cat(1, bird_struct.pathdiffs);
end