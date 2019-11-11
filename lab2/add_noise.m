function signal_noise = add_noise(x)

varnoise = 1
y = x + sqrt(varnoise) * randn(size(x))
signal_noise = y
end