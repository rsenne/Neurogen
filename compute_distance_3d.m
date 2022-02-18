function [distance] = compute_distance_3d(point_array)
    distance = zeros(1, length(point_array)-1);
    distance(1) = 0;
    for i=2:length(point_array)-1
        distance(i) = norm(point_array(i+1, :)-point_array(i));
    end
end