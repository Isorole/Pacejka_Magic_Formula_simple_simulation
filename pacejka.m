% Pacejka Magic Formula - Tire Grip Simulation (MATLAB)

% Define slip angle range (in degrees)
slip_angle = -15:0.1:15; % Slip angle from -15° to 15°

% Pacejka Magic Formula Parameters
B = 10;   % Stiffness Factor
C = 1.9;  % Shape Factor
D = 1.2;  % Peak Friction Coefficient
E = 0.97; % Curvature Factor

% Compute lateral force using the Pacejka formula
lateral_force = D * sin(C * atan(B * slip_angle - E * (B * slip_angle - atan(B * slip_angle))));

% Plot the results
figure;
plot(slip_angle, lateral_force, 'r', 'LineWidth', 2);
grid on;
xlabel('Slip Angle (degrees)');
ylabel('Lateral Force (N)');
title('Tire Grip Curve - Pacejka Magic Formula');
legend('Lateral Force vs. Slip Angle');
