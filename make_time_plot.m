function time_plot = make_time_plot(varargin)
    if nargin == 1
        figure()
        hold on
        for i=1:length(varargin{1})
            plot(timeofday(datetime(string(varargin{1}(i).realtimes(2:end)))), varargin{1}(i).inst_vel)
        end
    elseif nargin > 1
        figure()
        hold on
       for j=1:length(varargin)
           for i=1:length(varargin{j})
            plot(timeofday(datetime(string(varargin{j}(i).realtimes(2:end)))), varargin{j}(i).inst_vel)
           end
       end
    end 

   
            

     