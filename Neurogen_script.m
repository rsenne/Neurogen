%%
cd /home/ryansenne/Downloads
whiteband = readtable("whiteband_FINAL_COMPILED_TRACKS - Sheet1.csv");
lime12 = readtable("lime12_FINAL_COMPILED_TRACKLIST - Sheet1.csv");
pink61 = readtable("pink61_FINAL_COMPILED_TRACKS - Data.csv");
blue53 = readtable("blue53_FINAL_COMPILED_TRACKS - Sheet1.csv");
    
%%
cd /home/ryansenne/Documents/MATLAB/Neurogen
levy_sim = levy_flight(12, 3, 1);
levy_dis = compiled_sum(compute_distance_3d(levy_sim));
%%

%%
figure()
plot([1:length(levy_dis)], levy_dis)
hold on
for i=1:length(lime12_neuroblast_stats)
    scatter(1:length(lime12_neuroblast_stats(i).pathdiffs), compiled_sum(lime12_neuroblast_stats(i).pathdiffs));
end

% for i=1:length(whiteband_neuroblast_stats)
%     scatter(1:length(whiteband_neuroblast_stats(i).pathdiffs), whiteband_neuroblast_stats(i).pathdiffs)
% end
% 
% for i=1:length(pink61_neuroblast_stats)
%     scatter(1:length(pink61_neuroblast_stats(i).pathdiffs), pink61_neuroblast_stats(i).pathdiffs)
% end

% for i=1:length(blue53_neuroblast_stats)
%     scatter(1:length(blue53_neuroblast_stats(i).pathdiffs), blue53_neuroblast_stats(i).pathdiffs)
% end
%%
figure()
% plot(z)
hold on 
for i=1:length(z)
    scatter(1:length(z(i, :)), z(i,:))
end
%%
for i=1:length(z)
    t(i)=compiled_sum(compute_distance_3d(z(i, :)));
end
