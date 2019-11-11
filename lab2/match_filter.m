function h_t = match_filter(t)
    T_s = 2/1000;
    p = @(t) rect( (t-T_s/2)/T_s );    
    h_t = p(T_s - t)
end