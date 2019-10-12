# Lab 1 - Advanced Signal Processing EEE411

###### Author:Zhipeng Ye 

###### Student ID: 1926908

###### Faculty: MSc Multimedia Telecommunications

###### Email: Zhipeng.Ye19@student.xjtlu.edu.cn

###### Date: 8th October 2019



### Problem 1 (6 points) 

##### Complex numbers 

##### (a) For the complex number $x=1+j$, compute the real part, the imaginary part, the absolute value and the angle; (4 points) 

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear
clc
x=1+j
real_x=real(x)
imag_x=imag(x)
abs_x=abs(x)
angle_x=angle(x)
```

###### Below are the MATLAB outputs from Command Window

```matlab
x =

   1.0000 + 1.0000i


real_x =

     1


imag_x =

     1


abs_x =

    1.4142


angle_x =

    0.7854
```

###### Describe and analyze

For a complex number, we can image that it is a vector in the 2 dimension space. The angle of a complex number is the angle of this vector. It is convenient to calculate operations of complex numbers in Matlab.

---

##### (b) For the complex numbers$\{1, j, −1, −j\}$, compute the real part, the imaginary part, the absolute value and the angle, using vsector operations. (2 points)

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear
clc
complex_set=[1, j, -1, -j]
real_set=real(complex_set)
imag_set=imag(complex_set)
abs_set=abs(complex_set)
angle_set=angle(complex_set)
```

###### Below are the MATLAB outputs from Command Window

```matlab
complex_set =

   1.0000 + 0.0000i   0.0000 + 1.0000i  -1.0000 + 0.0000i   0.0000 - 1.0000i


real_set =

     1     0    -1     0


imag_set =

     0     1     0    -1


abs_set =

     1     1     1     1


angle_set =

         0    1.5708    3.1416   -1.5708
```

###### Describe and analyze

As we can see that matlab supports original opeartions of vector and matrix including types of complex numbers. 

---

### Problem 2 (9 points) 

##### Function plots 

##### (a) Plot the function $y = x^2$ for $x ∈ [0, +2]$; (3 points)

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear 
clc
y_1=@(x) x.^2
fplot(y_1, [0, 2])
```

###### Below are the MATLAB outputs 

![image-20191008225732838](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem2_1.png)

###### Describe and analyze

Because anonymous function is very easy to plot and fplot can simplify the painting. In a general method, we must generate a vector of input and get a vector of output. Then we use plot function by using these vectors.

---

##### (b) Plot the function $y = x^{\frac{1}{2}}$ for $x ∈ [0, +2]$ in green in the same figure; (3 points)

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear 
clc
y_2=@(x) x.^(1/2)
fplot(y_2, [0, 2],'g')
```

###### Below are the MATLAB outputs from Command Window

![image-20191008231506878](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem2_2.png)

###### Describe and analyze

I search this function on the Internet and find that we can add parameters to control the display.

---

##### (c) To above plot, add labels for the axes and grid lines. Add further title and a legend. (3 points)

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear 
clc
y_1=@(x) x.^2
fplot(y_1, [0, 2])
hold on
y_2=@(x) x.^(1/2)
fplot(y_2, [0, 2])
xlabel('X axis')
ylabel('Y axis')
grid on
title('The compare with y_1=x^2 and y_2=x^{(1/2)}')
legend('y_1=x^2','y_2=x^{(1/2)}')
```

###### Below are the MATLAB outputs 

![image-20191008234052824](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem2_3.png)

###### Describe and analyze

As we can see from the diagram, we can use hold on command to make pictures in the same figure.

---

### Problem 3 (9 points) 

##### Complex exponential function 

##### (a) Plot the function $y = sin(2πt)$ for $t ∈ [0, 2.5]$; (2 points)

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear
clc
y = @(t) sin(2*pi*t)
subplot(3,2,1)
fplot(y, [0, 2.5])
title('y=sin2*pi*t')
xlabel('T axis')
ylabel('Y axis')
grid on
hold on
```

###### Below are the MATLAB outputs 

![image-20191009101012889](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem3_1.png)

###### Describe and analyze

I use the subplot function to display the picture in the same figure.

---

##### (b) Consider the function $x = e^{j2πt}$ for $t ∈ [0,2.5]$. For this function, plot the real part, the imaginary part, the absolute value and the angle in four different subplots in the same figure; (4 points) 

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
T=0:0.01:2.5
X=exp(j*2*pi*T)
Real_X=real(X)
Imag_X=imag(X)
Abs_X=abs(X)
Angle_X=angle(X)
subplot(3,2,2)
plot(T, Real_X)
title('Real part of e^{j*2pi*t}')
grid on
xlabel('T axis')
ylabel('Real part of e^{j*2pi*t}')
subplot(3,2,3)
plot(T, Imag_X)
title('Imaginary part of e^{j*2pi*t}')
grid on
xlabel('T axis')
ylabel('Imaginary part of e^{j*2pi*t}')
subplot(3,2,4)
plot(T, Abs_X)
axis([0 2.5 0 2])
title('The absolute of e^{j*2pi*t}')
xlabel('T axis')
ylabel('The absolute of e^{j*2pi*t}')
grid on
subplot(3,2,5)
plot(T, Angle_X)
title('The angle of e^{j*2pi*t}')
grid on
xlabel('T axis')
ylabel('The angle of e^{j*2pi*t}')
```

###### Below are the MATLAB outputs 

![image-20191009101401106](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem3_2.png)

###### Describe and analyze

As we can see from results, the image of real part of $e^{j2\pi t}$ is same as the picture of $cos2\pi t$ and the image of imaginary part of $e^{j2 \pi t}$ is same as the picture of $sin2\pi t$.

---

##### (c) Make a 3D plot of the function $x = e^{j2πt}$ for $t ∈ [0,2.5]$. Add labels for the three axes. (And rotate the figure with the mouse.) (3 points) 

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
subplot(3,2,6)
axis([-1 1 -1 1 0 50])
plot3(Real_X, Imag_X, T)
title('The 3D plot of e^{j*2pi*t}')
xlabel('Real_x')
ylabel('Imag_x')
zlabel('T axis')
```

###### Below are the MATLAB outputs 

![image-20191009102136556](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem3_3.png)

###### Describe and analyze

As we can see from result, the image of $e^{j2\pi t}$ in 3D is a helix which can be viewed as a combination of $sin2 \pi t$ and $cos2 \pi t $, because of Euler's formula, $e^{i \pi t}=cos\pi t +isin\pi t$ .

---

### Problem 4 (12 points)

##### Plots and sampling period 

##### Consider the signal $x(t) = sin(2πf_0t) $ for $t ∈ [0, 2T_0]$, $T_0 = 1/f_0$ and $f_0 = 10^3$ Hz. 

##### (a)  Use the sampling period of $T_s = T_0/10$ (i.e., 10 sample points per $T_0$ seconds) and plot the signal; (3 points) 

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear
clc
f_0=10^3;
T_0=1/f_0;
t_1=0:T_0/10:2*T_0
x_1=sin(2*pi*t_1*f_0)
plot(t_1,x_1)
xlabel('T axis')
ylabel('x(t) = sin(2*pi*f_0*t)')
title('Same function with different frequency of sampling')
hold on
```

###### Below are the MATLAB outputs 

![image-20191009103702203](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem4_1.png)

###### Describe and analyze

As we can see from the picture, when we use 10 sample points to plot signal, there are some edges and corners because of loss of sample points.

---


##### (b)  Use the sampling period Ts = T0/20 and plot the signal in the same figure (in a different colour); (3 points) 

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
f_0=10^3;
T_0=1/f_0;
t_1=0:T_0/10:2*T_0
x_1=sin(2*pi*t_1*f_0)
plot(t_1,x_1)
xlabel('T axis')
ylabel('x(t) = sin(2*pi*f_0*t)')
title('Same function with different frequency of sampling')
hold on
t_2=0:T_0/20:2*T_0
x_2=sin(2*pi*t_2*f_0)
plot(t_2, x_2)
hold on
```

###### Below are the MATLAB outputs 

![image-20191009105358549](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem4_2.png)

###### Describe and analyze

As we can see from this diagram, if we use different frequencies of sampling, we will get different figure. This is because the high frequency of sampling, the more details of $sin(x)$ will be saved.

---

##### (c) Use the sampling period Ts = T0/4 and plot the signal in the same figure (in a different colour); (3 points) 

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
t_3=0:T_0/4:2*T_0
x_3=sin(2*pi*t_3*f_0)
plot(t_3,x_3)
legend('T_s=T_0/10','T_s=T_0/20','T_s=T_0/4')

% result
% As we can see from this diagram, if we use different frequencies of sampling, we will get different figure. 
% This is because, the high frequency of sampling, the detail of sin(x) will be saved. The lower frequency of sampling, 
% the detail of sin(x) will be lost.
```

###### Below are the MATLAB outputs 

![image-20191009105646713](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem4_3.png)

###### Describe and analyze

As we can see from this diagram, if we use different frequencies of sampling, we will get different figure. This is because the lower frequency of sampling, the details of $sin(x)$ will be lost.

---

##### (d) Interpret the results. 

As we can see from this diagram, if we use different frequencies of sampling, we will get different figure. This is because  the high frequency of sampling, the more details of $sin(x)$ will be saved, the lower frequency of sampling, the details of $sin(x)$ will be lost.

---

### Problem 5 (9 points) 

##### The rectangular pulse 

##### Consider the rectangular pulse (3 points) 

$$
\begin{equation}
Rect(t)=
\left\{  
             \begin{array}{**lr**}  
             1, &  for \ \ |t| \leq \frac{1}{2} \\  
             0, &otherwise    
             \end{array}  
\right.  
\end{equation}
$$

##### (a) Write a Matlab function for rect(t); (3 points)

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
function rect=rect_function(t)
%     rect=1*(t<=1/2&t>=-1/2)+0
    rect=abs(t)<=0.5;
end
```

###### Below are the MATLAB outputs 

Because this question doesn't ask us to display anything, so there is no result.

###### Describe and analyze

I use the piecewise function to implement $rect(t)$ and the parameter is a vector.

---

##### (b) Plot rect(t) for t ∈ [−2, 2]; (3 points) 

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
t=-2:0.01:2
rect=rect_function(t)
plot(t, rect)
```

###### Below are the MATLAB outputs 

![image-20191009133649592](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem5_1.png)

###### Describe and analyze

This is a rectangle function with 1 unit width.

---

##### (c) Define the x-axis to go from −3 to +3, and the y-axis to go from −2 to +2. Label the axes. (3 points) 

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
axis([-3,3,-2,2])
```

###### Below are the MATLAB outputs 

![image-20191009134229930](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem5_2.png)

###### Describe and analyze

We can use axis function to change the range of display.

---

### Problem 6 (9 points) 

The sinc-function 

##### Consider the function 

$$
sinc(t) = \frac{sin πt} {πt},
$$

and use the corresponding Matlab function in the following.

#####  (a) Plot the signal $s(t) = sinc(f_0t)$ for $t ∈ [−10T_0,10T_0]$, $f_0 = 1/T_0$, $T_0 = 2 s$. Use the sampling period $T_s = T_0/10$; (4 points)

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
T_0=2
f_0=1/T_0
t=-10*T_0:T_0/10:10*T_0
sinc_set=sinc(f_0*t)
plot(t, sinc_set)
```

###### Below are the MATLAB outputs 

![image-20191009134908346](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem6_1.png)

###### Describe and analyze

The $sinc(x)$ function is shaking around zeros because the function of $y=kx$ will become larger with increase of $x$ but $y=sin(x)$ will not become larger, the range of $y=sin(x)$ is at $[-1, 1]$ , so the range of sinc(x) will become samller.

---

##### (b)  Turn on the grid lines in the figure; 

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
grid on
```

###### Below are the MATLAB outputs 

![image-20191009135312623](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem6_2.png)

###### Describe and analyze

We can use grid on to add gridding.

---

##### (c)  Interpret the zeros of s(t). 

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
hold on
[row, col, zero_points]=find(abs(sinc_set) <= 0.01)
plot(t(col),sinc_set(col),'m+')
```

###### Below are the MATLAB outputs 

![image-20191009140630213](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem6_3.png)

###### Describe and analyze

As we can see from diagram, the function shake around the $zero(0)$ and the interval of zeros is constant because $sin(\pi t)$ is a period function but $kx$ is a nonperiodic function. So the combination of two functions is a period of $2 \pi / \pi$ function. 

---

#### Problem 7 (15 points) 

##### Manipulations of signals 

##### (a) Plot the signal $x_1(t) = 2$ · $sin(2πf_1t)$ with $f_1 = 10$ Hz; 

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear
clc
subplot(2,2,1)
t_1=0:2/(10*2*pi)/2000:16/(10*2*pi)
f_1=10
x_1= 2*sin(2*pi*f_1*t_1)
plot(t_1,x_1)
axis([0 16/(10*2*pi) -2 2])
title('The diagram of 2*sin(2*pi*f_1*t_1)')
xlabel('t_1 axis')
ylabel('2*sin(2*pi*f_1*t_1)')
```

###### Below are the MATLAB outputs 

![image-20191009150156929](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem7_1.png)

###### Describe and analyze

The period of $x_1(t)=2*sin(2\pi f_1 t)$ is $\frac{2\pi}{2\pi f_1}$ , so I choose 2 periods to plot this function and use $1/10$ period as sampling points to plot.

---

##### (b) Plot the signal $x_2(t) = 2 + x_1(t)$; 

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
subplot(2,2,2)
x_2= 2+x_1
plot(t_1,x_2)
axis([0 2*1/f_1 0 4])
title('The diagram of 2*sin(2*pi*f_1*t_1)+2')
xlabel('t_1 axis')
ylabel('2*sin(2*pi*f_1*t_1)+2')
```

###### Below are the MATLAB outputs 

![image-20191009150701948](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem7_2.png)

###### Describe and analyze

As we can see from diagram, the function of $2+x_1(t)$ shifts up of 2 units.

---

##### (c) Plot the signal $x_3(t) = sin(2πf_3t)$ with $f_3 = 10f_1$; 

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
subplot(2,2,3)
f_3=10*f_1
t_1=0:2*1/f_1/100:2*1/f_1
x_3= sin(2*pi*f_3*t_1)
plot(t_1,x_3)
title('The diagram of sin(2*pi*f_3*t_1)')
xlabel('t_1 axis')
ylabel('sin(2*pi*f_3*t_1)')
axis([0 2*1/f_1 -1 1])
```

###### Below are the MATLAB outputs 

![image-20191009152542896](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem7_3.png)

###### Describe and analyze

I choose the same scale of $sin(2\pi f_3 t)$ as $sin(2\pi f_1t)$ to compare conveniently.

---

##### (d) Plot the signal $x_4(t) = x_1(t) · x_3(t)$; 

######  The listing below shows a MATLAB function that was used to solve this question.

```matlab
subplot(2,2,4)
x_4=x_1.*x_3
plot(t_1,x_4)
title('The diagram of 2*sin(2*pi*f_1*t_1)*sin(2*pi*f_3*t_1)')
xlabel('t_1 axis')
ylabel('2*sin(2*pi*f_1*t_1)*sin(2*pi*f_3*t_1)')
axis([0 2*1/f_1 -2 2])
```

###### Below are the MATLAB outputs 

![image-20191009152640663](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem7_4.png)

###### Describe and analyze

As we can see fron the result, the picture of $x_4(t)=x_1(t)*x_3(t)$ is a output of AM. $x_1$ can be viewed as a message signal, $x_3$ can be viewed as a carrier wave.

---

##### (e) Comment your results especially for $x_4(t)$. 

The $x_4(t)=x_1(t)*x_3(t)=sin(2\pi f_1t)*sin(2\pi f_3 t)$ is similar to AM, because the formula of AM is $AM = [f(t)+1]*carrier wave$. The difference is that in general, we choose $cos$ functions as a carrer function, but in this experiment, we use the $sin$ function. 

---

#### Problem 8 (31 points)

##### Spectra of signals

##### Use the Matlab function **ft.m** (provided on the ICE) to compute the Fourier transform. (This function is only a user-friendly interface to **fft.m**.)

##### Write an m-file to perform steps (a) to (c). This will make it easier for you to do (e), (f), and (g).

(a)  Define a sinusoidal signal $x(t)$; (3 points)

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear
clc
t = 0:0.01:2
x_t = cos(20*pi * t)
subplot(2, 1, 1)
plot(t, x_t)
title('The time space of cos(20*\pi * t)')
xlabel('t axis')
ylabel('x_t=cos(20*\pi * t)')
```

###### Below are the MATLAB outputs 

![image-20191009225913162](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem8_1.png)

###### Describe and analyze

I choose the $sin(20\pi t)$ as the signal $x(t)$.

---

(b)  Compute the Fourier transform $X(f)$ of this signal; (2 points)

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
[f, s] = ft(t, x_t)
subplot(2, 1, 2)
plot(f, s)
title('The frequency space of cos(20*\pi * t)')
xlabel('s axis')
ylabel('x_s')
```

###### Below are the MATLAB outputs 

![image-20191009230014578](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem8_2.png)

###### Describe and analyze

As we can see from the diagram, It submits to $\frac{\delta (f-a/2\pi)+ \delta(f+a/2 \pi)}{2i}$ in theory.

---

(c)  Use a figure with two subplots, and plot the signal in one subplot and its magnitude spectrum in the other subplot;(3 points)

I have done this step in step a and step b. The answer is included in question a and b.

---

(d)  Interpret your results;(2 points)

The ouput is corresponding with theoretical result. Because the Fourier transform of $cos(t)$ is $\frac{\delta (f-a/2\pi)+ \delta(f+a/2 \pi)}{2i}$. For FFT, we must choose appropriate the frequency of sampling.

---

(e)  Change the length of the signal $x(t)$ and repeat (b), (c), (d);(7 points)

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear
clc
t = 0:0.01:10
x_t = cos(20*pi * t)
subplot(2, 1, 1)
plot(t, x_t)
title('The time space of cos(20*\pi * t)')
xlabel('t axis')
ylabel('x_t=cos(20*\pi * t)')
[f, s] = ft(t, x_t)
subplot(2, 1, 2)
plot(f, s)
title('The frequency space of cos(20*\pi * t)')
xlabel('s axis')
ylabel('x_s')
```

###### Below are the MATLAB outputs 

![image-20191009232810615](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem8_5.png)

###### Describe and analyze

When I change the length of function to $[0 \ 10]$, the spectrum become more accurate.

---

(f)  Change the sampling period of the signal $x(t)$ and repeat (b), (c), (d);(7 points)

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear
clc
t = 0:0.005:2
x_t = cos(20*pi * t)
subplot(2, 1, 1)
plot(t, x_t)
title('The time space of cos(20*\pi * t)')
xlabel('t axis')
ylabel('x_t=cos(20*\pi * t)')
[f, s] = ft(t, x_t)
subplot(2, 1, 2)
plot(f, s)
title('The frequency space of cos(20*\pi * t)')
xlabel('s axis')
ylabel('x_s')
```

###### Below are the MATLAB outputs 

![image-20191009235735565](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem8_6.png)

###### Describe and analyze

When I choose more sampling points, the spectrum become more detailed and accurate. On other hand, when $\frac{1}{\triangle T} \le 2 u_{max}$, the signal can't be recovered because It doesn't  correspond to the Nyquist–Shannon sampling theorem.

---

(g)  Define a rectangular signal $y(t)$ and repeat (b), (c), (d).(7 points)

###### The listing below shows a MATLAB function that was used to solve this question.

```matlab
clear
clc
t = -2:0.001:2;
subplot(2, 1, 1)
rect = rect_function(t);
plot(t, rect);
grid on
title('the time space of rect_function')
xlabel('t axis')
ylabel('rect_function')
subplot(2, 1, 2)
[f, s] = ft(t, rect);
plot(f, s, '.-')
grid on
title('the frequency space of rect_function')
xlabel('s axis')
ylabel('fourier transformation of rect_function')
```

###### Below are the MATLAB outputs 

![image-20191011125837549](/Users/geekye/Documents/Courses/advanced signal processing/lab/lab1/problem8_8.png)

###### Describe and analyze

As we can see from result, there are some difference between result and $sinc=\frac{sin\pi s}{\pi s}$. Because computer can't computer whole Fourier Transformation of the rectangular function. The Fourier Transformation formula is this.
$$
F rect(t)=\sum_{k=-\infty}^{\infty}a_k*e^{jk*(\frac{2\pi}{T})t}
$$
But computer can't compute infinity number in finity time, therefore the picture will not get the same structure of $sinc$.