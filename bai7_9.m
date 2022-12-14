%T1(z, l1) R1(z, t1) T2(z l3) T3(y l2) R2(x, t2) T4(y l4)
%R3(x, t3) T5(z, l5) R4(x t4) T6(y l6) 

 %syms t1 t2 t3 t4 l1 l2 l3 l4 l5 l6 ;
 %T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
 %R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
 %T2 = [1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
 %T3 = [1 0 0 0; 0 1 0 l2; 0 0 1 0; 0 0 0 1];
 %R2=[1 0 0 0; 0 cos(t2) -sin(t2) 0; 0 sin(t2) cos(t2) 0; 0 0 0 1];
 %T4 = [1 0 0 0; 0 1 0 l4; 0 0 1 0; 0 0 0 1];
 %R3=[1 0 0 0; 0 cos(t3) -sin(t3) 0; 0 sin(t3) cos(t3) 0; 0 0 0 1];
 %T5 = [1 0 0 0; 0 1 0 0; 0 0 1 l5; 0 0 0 1];
 %R4=[1 0 0 0; 0 cos(t4) -sin(t4) 0; 0 sin(t4) cos(t4) 0; 0 0 0 1];
 %T6 = [1 0 0 0; 0 1 0 l6; 0 0 1 0; 0 0 0 1];
 %P = [0;0;0;1];
 %A= simplify(T1*R1*T2*T3*R2*T4*R3*T5*R4*T6*P);
 %disp(A);
 
 syms ta t2 t3 t4;
 l1= 50; l2= 10; l3= 5; l4= 20; l5= 20; l6=15; l7=10;
 for t1=0:0.1:2*3.14
     for t2=0:0.1:3.14
         for t3=0:0.1:2*3.14
             for t4=0:0.1:3.14
                 x =-sin(t1)*(l2 - l5*sin(t2 + t3) + l4*cos(t2) + l6*cos(t2 + t3 + t4));
                 y = cos(t1)*(l2 - l5*sin(t2 + t3) + l4*cos(t2) + l6*cos(t2 + t3 + t4));
                 z = l1 + l3 + l5*cos(t2 + t3) + l4*sin(t2) + l6*sin(t2 + t3 + t4);
                 plot3(x, y, z, '*');
                 hold on
             end
         end
     end
 end
 
                 
     