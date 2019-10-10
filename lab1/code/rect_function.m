function rect=rect_function(t)
%     rect=1*(t<=1/2&t>=-1/2)+0
    rect=abs(t)<=0.5;
end