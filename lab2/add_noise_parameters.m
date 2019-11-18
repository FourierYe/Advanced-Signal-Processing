function signal_noise = add_noise_parameters(x,mu,variance)

varnoise = variance
y = x + sqrt(varnoise) * randn(size(x))+mu
signal_noise = y
end