%R(z,t1) T(z, l1) T(x, l2) T(z l3) R(z, t2) T(x, l4) T(z, -l5)
%syms l1 l2 l3 l4 l5 t1 t2
%R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
%T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
%T2 = [1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%T3 = [1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
%R2 = [cos(t2) -sin(t2) 0 0; sin(t2) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
%T4 = [1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%T5 = [1 0 0 0; 0 1 0 0; 0 0 1 -l5; 0 0 0 1];
%P = [0; 0; 0; 1];
%result = simplify(R1*T1*T2*T3*R2*T4*T5*P);
%disp(result);
% Px = 14cos(t1+t2) + 12cos(t1)
% Py = 14sin(t1+t2) + 12sin(t1)
% Pz = l1 +l3 -l5

syms t1 t2;
 l1 = 50; l2= 30; l3=5; l4 =20; l5=30; 
 for t1=0:0.1:2*3.14
     for t2=0:0.1:3.14
         x =14*cos(t1+t2) + 12*cos(t1);
         y = 14*sin(t1+t2) + 12*sin(t1);
         z= l1 +l3 -l5;
         plot3(x,y,z, '*');
         hold on
     end
 end

 