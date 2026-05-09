clear all
close all
load("trajectory_finale_09_05_22_12_initial_control.mat")
figure
subplot(3,3,1)
joint_position=reference_position(:,1)-joint_position(:,1);
joint_velocity=reference_velocity(:,1)-joint_velocity(:,1);
joint_torque=reference_acceleration(:,1)-joint_torque(:,1);
plot(time, joint_position, 'r')
title('Error joint 1')
legend('joint position')
xlabel('tempo [s]')
ylabel('pos [m]')
subplot(3,3,2)
plot(time, joint_velocity, 'r')
title('Error joint 1')
legend('joint velocity')
xlabel('tempo [s]')
ylabel('vel [m/s]')
subplot(3,3,3)
plot(time, joint_torque, 'r')
title('Error joint 1')
legend('joint torque')
xlabel('tempo [s]')
ylabel('torque [N*m]')

load("trajectory_finale_09_05_22_12_initial_control.mat")
joint_position=reference_position(:,2)-joint_position(:,2);
joint_velocity=reference_velocity(:,2)-joint_velocity(:,2);
joint_torque=reference_acceleration(:,2)-joint_torque(:,2);
subplot(3,3,4)
plot(time, joint_position, 'b')
title('Error joint 2')
legend('joint position')
xlabel('tempo [s]')
ylabel('pos [m]')
subplot(3,3,5)
plot(time, joint_velocity, 'b')
title('Error joint 2')
legend('joint velocity')
xlabel('tempo [s]')
ylabel('vel [m/s]')
subplot(3,3,6)
plot(time, joint_torque, 'b')
title('Error joint 2')
legend('joint torque')
xlabel('tempo [s]')
ylabel('torque [N*m]')

load("trajectory_finale_09_05_22_12_initial_control.mat")
joint_position=reference_position(:,3)-joint_position(:,3);
joint_velocity=reference_velocity(:,3)-joint_velocity(:,3);
joint_torque=reference_acceleration(:,3)-joint_torque(:,3);
subplot(3,3,7)
plot(time, joint_position, 'g')
title('Error joint 3')
legend('joint position')
xlabel('tempo [s]')
ylabel('pos [m]')
subplot(3,3,8)
plot(time, joint_velocity, 'g')
title('Error joint 3')
legend('joint velocity')
xlabel('tempo [s]')
ylabel('vel [m/s]')
subplot(3,3,9)
plot(time, joint_torque, 'g')
title('Error joint 3')
legend('joint torque')
xlabel('tempo [s]')
ylabel('torque [N*m]')