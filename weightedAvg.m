function w_avg = weightedAvg(bldgType,avg_param,wt_param)
%WEIGHTEDAVG Weighted average of a given parameter of a given building
%type.
%   w_avg = weightedAvg(bldgType,param)
%   Returns weighted average of parameter PARAM for the building type
%   BLDGTYPE of the DOE prototype buildings.

%% Get values to be averaged and weights
weights = paramData(bldgType,wt_param);
values = paramData(bldgType,avg_param);

%% Calculate weighted average
w_total = sum([weights{:,2}]);
w_avg = 0;
for i = 1:1:length(values)
    w_avg = w_avg + values{i,2} * (weights{i,2}/w_total);
end

end
