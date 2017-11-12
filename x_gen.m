function [x_t, xd_t, xdd_t]= x_gen(x0, xd0, dt)

% Generator of exponential x(t) trajectories:
% Outputs: 
%           x_t: Generated trajectory in "x" with respet to time | x(t).
%           xd_t: First derivative of x_t.
%           xdd_t: Second derivative of x_t.
% Inputs: 
%           x0: Initial condition of "x" position.
%           xd0: Initial velocity of "x" with respect to time.
%           dt: Rate of time.

t0= dt; % Initial time.
xf= -dt; % Final position of "x" closer to 0.

% Constants of the exponential:
    tau= x0/ xd0; % tau< 0 (Condition for "x(t)" to converge to "0" ).
    lambda= x0/ exp(t0/ tau); % lambda<0 (Condition for "tf" to be real).

tf= tau* log(xf/ lambda); % Final time.    

t= t0: dt: tf; % Time vector

% Exponential generation:

x_t= lambda* exp(t/ tau); % Position x(t)
    xd_t= lambda/ tau* exp(t/ tau); % Velocity
    xdd_t= lambda/ tau^ 2* exp(t/ tau); % Acceleration
    
end
