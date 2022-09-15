%bai 4 
%T(z, l1) R(z, -t1) T(x, l2) R(x, 90) T(z, -l3) R(z, -t2) 
%T(x, l4) R(x, -90) t(z, l5)

%syms l1 l2 l3 l4 l5 t1 t2 
%T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
%R1 = [cos(-t1) -sin(-t1) 0 0; sin(-t1) cos(-t1) 0 0; 0 0 1 0; 0 0 0 1];
%T2 = [1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%R2 = [1 0 0 0; 0 0 -1 0; 0 1 0 0;0 0 0 1];
%T3 = [1 0 0 0; 0 1 0 0; 0 0 1 -l3; 0 0 0 1];
%R3 = [cos(-t2) -sin(-t2) 0 0; sin(-t2) cos(-t2) 0 0; 0 0 1 0; 0 0 0 1];
%T4 = [1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%R4 = [1 0 0 0; 0 0 1 0; 0 -1 0 0;0 0 0 1];
%T5 = [1 0 0 0; 0 1 0 0; 0 0 1 l5; 0 0 0 1];
%P = [0; 0; 0; 1];

%A= simplify(T1*R1*T2*R2*T3*R3*T4*R4*T5*P);
%disp(A);


 syms t1 t2;
 l1 = 50; l2= 50; l3=5; l4 =20; l5=30; 
 for t1=0:0.1:2*3.14
     for t2=0:0.1:3.14
         x =l2*cos(t1) + l3*sin(t1) + l4*cos(t1)*cos(t2) + l5*cos(t1)*sin(t2);
         y = l3*cos(t1) - l2*sin(t1) - l4*cos(t2)*sin(t1) - l5*sin(t1)*sin(t2);
         z= l1 + l5*cos(t2) - l4*sin(t2);
         plot3(x,y,z, '*');
         hold on
     end
 end
 
    
