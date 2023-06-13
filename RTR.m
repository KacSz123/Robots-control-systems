%%% manipulator RTR
%% constants in model
l2 = 0.3;       %[m]
l3 = 0.2;       %[m]
m2 = 20;        %[kg]
m3 = 20;        %[kg]
g = 9.81;       %[m/(s^2)]
%% sim
t_stop = 20;
%% regulator PD
Kp = 200;
Kd = 20;
%% start pose
q1_0 = 2;
q2_0 = 4;
q3_0 = 2;

q1p_0 = 0;
q2p_0 = 0;
q3p_0 = 0;
%% init conditions trajectory generator
q1d_0 = 0; % q1d = sin(t/2)
q2d_0 = 1; % q2d = cos(t)
q3d_0 = 0; % q3d = sin(2t)

q1dp_0 = 0.5;
q2dp_0 = 0;
q3dp_0 = 2;
%% controller constants
% Kp= 100;
Kd = 10;  %% adap 75 kd
Delta = 2;
R = 20;
Gamma = 20;
%% simulink model
[t] = sim("RTR_sim2021a_AdapSadHor.slx");
% plot e(t)
figure(1); grid on; hold on;
plot(t.t, t.e1,'r', linewidth=1.5);
xlabel('$t$', 'interpreter', 'latex',fontsize=14);
ylabel('$e_1(t)$', 'interpreter', 'latex',fontsize=14);
title('Zmiana $e_1$ w czasie', 'interpreter', 'latex', fontsize=16);
figure(2); grid on; hold on;
plot(t.t, t.e2,'r', linewidth=1.5);
xlabel('$t$', 'interpreter', 'latex',fontsize=14);
ylabel('$e_2(t)$', 'interpreter', 'latex',fontsize=14);
title('Zmiana $e_2$ w czasie', 'interpreter', 'latex',fontsize=16);
figure(3); grid on; hold on;
plot(t.t, t.e3,'r', linewidth=1.5);
xlabel('$t$', 'interpreter', 'latex',fontsize=14);
ylabel('$e_3(t)$', 'interpreter', 'latex',fontsize=14);
title('Zmiana $e_3$ w czasie', 'interpreter', 'latex',fontsize=16);
figure(4); grid on; hold on;
plot(t.t, t.J,'r', linewidth=1.5);
xlabel('$t$', 'interpreter', 'latex',fontsize=14);
ylabel('$J(t)$', 'interpreter', 'latex',fontsize=14);
title('Średni błąd kwadratowy',fontsize=16);
figure(5); grid on; hold on;
plot(t.t, t.a,'r', linewidth=1.5);
xlabel('$t$', 'interpreter', 'latex',fontsize=14);
ylabel('$a(t)$', 'interpreter', 'latex',fontsize=14);
title('Estymowany parametr $\hat{a}$ ', 'interpreter', 'latex',fontsize=16);

%% plot ep(t)
% figure(4); grid on; 
% xlabel('$t$', 'interpreter', 'latex',fontsize=16);
% ylabel('$\dot{e}_1(t)$', 'interpreter', 'latex',fontsize=16);
% title('Zmiana $\dot{e}_1$ w czasie', 'interpreter', 'latex', fontsize=16);
% plot(t.t, t.e1p,'r', linewidth=1.5);

% figure(5); grid on;
% xlabel('$t$', 'interpreter', 'latex',fontsize=16);
% ylabel('$\dot{e}_2(t)$', 'interpreter', 'latex',fontsize=16);
% title('Zmiana $\dot{e}_2$ w czasie', 'interpreter', 'latex',fontsize=16);
% plot(t.t, t.e2p,'r', linewidth=1.5);

% figure(6); grid on;
% xlabel('$t$', 'interpreter', 'latex',fontsize=16);
% ylabel('$\dot{e}_3(t)$', 'interpreter', 'latex',fontsize=16);
% title('Zmiana $\dot{e}_3$ w czasie', 'interpreter', 'latex',fontsize=16);
% plot(t.t, t.e3p,'r', linewidth=1.5);

