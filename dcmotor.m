clc;
clear;
close all;

%% DC Motor Parameters
J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;

s = tf('s');
motor = K / ((J*s + b)*(L*s + R) + K^2);

%% Open Loop Analysis
figure;
step(motor);
title('Open-Loop Step Response');
grid on;

%% Root Locus
figure;
rlocus(motor);
title('Root Locus of DC Motor');
grid on;

%% Manual PID Controller
Kp = 120;
Ki = 250;
Kd = 15;

PID_manual = Kp + Ki/s + Kd*s;
closed_manual = feedback(PID_manual*motor,1);

%% Auto-Tuned PID
PID_auto = pidtune(motor,'PID');
closed_auto = feedback(PID_auto*motor,1);

%% Comparison Plot
figure;
step(closed_manual, closed_auto);
legend('Manual PID','Auto Tuned PID');
title('Closed Loop Comparison');
grid on;

%% Performance Metrics
info_manual = stepinfo(closed_manual);
info_auto = stepinfo(closed_auto);

disp('Manual PID Performance:');
disp(info_manual);

disp('Auto PID Performance:');
disp(info_auto);

%% Disturbance Rejection Test
t = 0:0.01:5;
disturbance = 0.2*sin(5*t);  % External load disturbance
[y,t] = lsim(closed_manual, disturbance, t);

figure;
plot(t,y);
title('Response under Load Disturbance');
xlabel('Time (s)');
ylabel('Speed');
grid on;