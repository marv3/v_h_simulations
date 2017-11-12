clc, close all, clear all
dt= 0.0001;

t0= dt;

% Initial conditions
x0= -0.3;
xd0= 0.8;
xf= -dt;

tau= x0/ xd0; % tau< 0 (Condition for "x(t)" to converge to "0" ).
lambda= x0/ exp(t0/ tau); % lambda<0 (Condition for "tf" to be real).

tf= tau* log(xf/ lambda);

t= t0: dt: tf; % Time vector
x_t= lambda* exp(t/ tau); % Position x(t)
    xd_t= lambda/ tau* exp(t/ tau); % Velocity

% Graphic description
figure
plot(t, x_t), title('Position x(t)');
xlabel('Time'), ylabel('Position')

figure
plot(t, xd_t), title('Velocity of x(t)');
xlabel('Time'), ylabel('Velocity')
 