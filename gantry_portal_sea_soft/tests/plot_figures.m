clear
close all
load("trajectory_finale_09_05_22_12_initial_control.mat")
figure
subplot(3,3,1)
joint_position=reference_position(:,1)-joint_position(:,1);
joint_velocity=reference_velocity(:,1)-joint_velocity(:,1);
joint_torque=joint_torque(:,1);
plot(time, joint_position)
title('Err Pos - J1')
legend('Posizione')
xlabel('Tempo [s]')
ylabel('Pos [m]')
subplot(3,3,2)
plot(time, joint_velocity)
title('Err Vel - J1')
legend('Velocità')
xlabel('Tempo [s]')
ylabel('Vel [m/s]')
subplot(3,3,3)
plot(time, joint_torque)
title('Coppia - J1')
legend('Coppia')
xlabel('Tempo [s]')
ylabel('Coppia [N*m]')

load("trajectory_finale_09_05_22_12_initial_control.mat")
joint_position=reference_position(:,2)-joint_position(:,2);
joint_velocity=reference_velocity(:,2)-joint_velocity(:,2);
joint_torque=joint_torque(:,2);
subplot(3,3,4)
plot(time, joint_position)
title('Err Pos - J2')
legend('Posizione')
xlabel('Tempo [s]')
ylabel('Pos [m]')
subplot(3,3,5)
plot(time, joint_velocity)
title('Err Vel - J2')
legend('Velocità')
xlabel('Tempo [s]')
ylabel('Vel [m/s]')
subplot(3,3,6)
plot(time, joint_torque)
title('Coppia - J2')
legend('Coppia')
xlabel('Tempo [s]')
ylabel('Coppia [N*m]')

load("trajectory_finale_09_05_22_12_initial_control.mat")
joint_position=reference_position(:,3)-joint_position(:,3);
joint_velocity=reference_velocity(:,3)-joint_velocity(:,3);
joint_torque=joint_torque(:,3);
subplot(3,3,7)
plot(time, joint_position)
title('Err Pos - J3')
legend('Posizione')
xlabel('Tempo [s]')
ylabel('Pos [m]')
subplot(3,3,8)
plot(time, joint_velocity)
title('Err Vel - J3')
legend('Velocità')
xlabel('Tempo [s]')
ylabel('Vel [m/s]')
subplot(3,3,9)
plot(time, joint_torque)
title('Coppia - J3')
legend('Coppia')
xlabel('Tempo [s]')
ylabel('Coppia [N*m]')