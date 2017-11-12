clc, close all, clear all
dt= 0.0001;

t0= dt;

% Condiciones iniciales
x0= -0.3;
xd0= 0.8;
xf= -dt;

tau= x0/ xd0; % tau< 0 (Para que x(t) converja a 0).
lambda= x0/ exp(t0/ tau); % lambda<0 (para que tf sea real).

tf= tau* log(xf/ lambda);

t= t0: dt: tf; % Vector de tiempo
x_t= lambda* exp(t/ tau); % Posici?n x(t)
    xd_t= lambda/ tau* exp(t/ tau); % Velocidad

% Descripci?n gr?fica:
figure
plot(t, x_t), title('Posici?n generada x(t)');
xlabel('tiempo'), ylabel('posici?n')

figure
plot(t, xd_t), title('Velocidad en x(t)');
xlabel('tiempo'), ylabel('velocidad')
 