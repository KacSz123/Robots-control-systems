%% manipulator TRT
%% stałe w macierzach
l2 = 0.3;       %[m]
l3 = 0.2;       %[m]
m2 = 20;        %[kg]
m3 = 20;        %[kg]
g = 9.81;       %[m/(s^2)]
%% init simulink
Kp = 100000;
Kd = 10000;
[t] = sim("RTR_sim2021a.slx");

if 1==1
end


