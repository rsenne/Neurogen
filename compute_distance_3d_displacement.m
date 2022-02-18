function [distance] = compute_distance_3d_displacement(point_array)
    distance = zeros(1, length(point_array)-1);
    for i=1:length(point_array)-1
        distance(i) = norm(point_array(i+1, :)-point_array(1));
    end
end