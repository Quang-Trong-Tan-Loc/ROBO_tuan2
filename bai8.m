% R1(z, t1) T1(y, l1) T2(z, l2) R2(x, t2) T3(y, l3) R3(x, t3) T4(y, l4)
% R4(x, t4)  R5(z, t5)  T5(y, l5) T6(z, -16)

%syms t1 t2 t3 t4 t5 l1 l2 l3 l4 l5 l6;
%R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
%T1 = [1 0 0 0; 0 1 0 l1; 0 0 1 0; 0 0 0 1];
%T2 = [1 0 0 0; 0 1 0 0; 0 0 1 l2; 0 0 0 1];
%R2 = [1 0 0 0; 0 cos(t2) -sin(t2) 0; 0 sin(t2) cos(t2) 0; 0 0 0 1];
%T3 = [1 0 0 0; 0 1 0 l3; 0 0 1 0; 0 0 0 1];
%R3 = [1 0 0 0; 0 cos(t3) -sin(t3) 0; 0 sin(t3) cos(t3) 0; 0 0 0 1];
%T4 = [1 0 0 0; 0 1 0 l4; 0 0 1 0; 0 0 0 1];
%R4 = [1 0 0 0; 0 cos(t4) -sin(t4) 0; 0 sin(t4) cos(t4) 0; 0 0 0 1];
%R5 = [cos(t5) -sin(t5) 0 0; sin(t5) cos(t5) 0 0; 0 0 1 0; 0 0 0 1];
%T5 = [1 0 0 0; 0 1 0 l5; 0 0 1 0; 0 0 0 1];
%T6 = [1 0 0 0; 0 1 0 0; 0 0 1 -l6; 0 0 0 1];
%P = [0;0;0;1];
%A= simplify(R1*T1*T2*R2*T3*R3*T4*R4*R5*T5*T6*P);
%disp(A);

 syms ta t2 t3 t4 t5;
 l1= 10; l2= 20; l3= 40; l4= 30; l5= 10; l6=20;
 for t1=0:0.1:2*3.14
     for t2=0:0.1:3.14
         for t3=0:0.1:2*3.14
             for t4=0:0.1:3.14
                 for t5=0:0.1:3.14
                     x =- l5*(cos(t1)*sin(t5) + cos(t2 + t3 + t4)*cos(t5)*sin(t1)) - l1*sin(t1) - l4*cos(t2 + t3)*sin(t1) - l3*cos(t2)*sin(t1) - l6*sin(t2 + t3 + t4)*sin(t1);
                     y = l1*cos(t1) + l4*cos(t2 + t3)*cos(t1) + l3*cos(t1)*cos(t2) - l5*sin(t1)*sin(t5) + l6*sin(t2 + t3 + t4)*cos(t1) + l5*cos(t2 + t3 + t4)*cos(t1)*cos(t5);
                     z = l2 + l6*(sin(t2 + t3)*sin(t4) - cos(t2 + t3)*cos(t4)) + l4*sin(t2 + t3) + l3*sin(t2) + l5*cos(t5)*(cos(t2 + t3)*sin(t4) + sin(t2 + t3)*cos(t4));
                     plot3(x, y, z, '*');
                     hold on
                 end
             end
         end
     end
 end