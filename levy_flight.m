function [coord_array] = levy_flight(n, m, beta)
    num = gamma(1+beta)*sin(pi*beta/2); 
    den = gamma((1+beta)/2)*beta*2^((beta-1)/2); 
    sigma_u = (num/den)^(1/beta);
    u = random('Normal',0,sigma_u^2,n,m);
    v = random('Normal',0,1,n,m);
    coord_array = u./(abs(v).^(1/beta));      
end
