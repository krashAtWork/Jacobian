function [A_matrices] = fk (a_vec, d_vec, alpha_vec, theta_vec)

    % intermediate values
    A1_0 = find_A_from_DH(a_vec(1),d_vec(1), alpha_vec(1), theta_vec(1));
    A2_1 = find_A_from_DH(a_vec(2),d_vec(2), alpha_vec(2), theta_vec(2));
    A3_2 = find_A_from_DH(a_vec(3),d_vec(3), alpha_vec(3), theta_vec(3));
    A4_3 = find_A_from_DH(a_vec(4),d_vec(4), alpha_vec(4), theta_vec(4));
    A5_4 = find_A_from_DH(a_vec(5),d_vec(5), alpha_vec(5), theta_vec(5));
    A6_5 = find_A_from_DH(a_vec(6),d_vec(6), alpha_vec(6), theta_vec(6));
    
    A2_0 = A1_0 * A2_1;
    A3_0 = A1_0 * A2_1 * A3_2;
    A4_0 = A1_0 * A2_1 * A3_2 * A4_3;
    A5_0 = A1_0 * A2_1 * A3_2 * A4_3 * A5_4;
    A6_0 = A1_0 * A2_1 * A3_2 * A4_3 * A5_4 * A6_5;
    
    A_matrices = [A1_0; A2_0 ; A3_0; A4_0; A5_0; A6_0];
 
%     Ares = zeros(4*6,4);
%     N = 1
%     temp =zeros(4,4);
    
    %     for i= 1:N
%         m = i-1
%         temp = find_A_from_DH(a_vec(i),d_vec(i), alpha_vec(i), theta_vec(i))
%         Ares(i+4-1:i+4-1,1:4) = temp
%     end

end