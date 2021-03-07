%% Jacobian Computation

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% confirm the forward kinematic,given the values and compare with solution

% motor constants or dh values
a_vec = [0.145, 1.150, 0.250, 0, 0, 0];
d_vec = [0.54, 0, 0, -1.812, 0, -0.1];
alpha_vec = [3*pi/2, -pi, -pi/2, pi/2, 3*pi/2, pi];
p_tool = [   1.69134; 2.05840; 0.68304 ];
R_tool =[
  0.84807 ,  0.50982 ,  0.14446 ;
 -0.51742 , 0.73797 ,  0.43321 ;
  0.11425 , -0.44214,   0.88964];
A_tool = [R_tool,p_tool; 0,0,0,1];



% motor variable
theta_vec = [0.87674,  -0.78611,   0.21930,   0.16801,   1.68849,   4.65091];

% A6_0 = A_ref[]
A_ref = fk(a_vec, d_vec, alpha_vec, theta_vec);
A6_0 = A_ref(21:24,1:4);

%% confirmed forward kinematics works











