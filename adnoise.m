function [out1] = adnoise(in1,in2)
%adnoise add white noise in2 of max value
h = max(max(in1))*in2;
g = h*randn(size(in1));
out1 = in1 + g;
end