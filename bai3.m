%R1(z, t1) T1(z, l1) T2(x l2) R2(x, -90) R3(z, t2) T3(z, l3)
%R4(x, 90) T4(x, l4) R5(z, t3) T5(z, -l8) R6(x, -90) T6(x, l5)
%R7(z, t4) T7(z, l6) T8(x, l7)

%syms t1 t2 t3 t4 l1 l2 l3 l4 l5 l6 l7 l8;

%R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
%T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
%T2 = [1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%R2 = [1 0 0 0; 0 0 1 0; 0 -1 0 0; 0 0 0 1];
%R3 = [cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
%T3 = [1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
%R4 = [1 0 0 0; 0 0 -1 0; 0 1 0 0; 0 0 0 1];
%T4 = [1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%R5 = [cos(t3) -sin(t3) 0 0; sin(t3) cos(t3) 0 0; 0 0 1 0; 0 0 0 1];
%T5 = [1 0 0 0; 0 1 0 0; 0 0 1 -l8; 0 0 0 1];
%R6 = [1 0 0 0; 0 0 1 0; 0 -1 0 0; 0 0 0 1];
%T6 = [1 0 0 l5; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%R7 = [cos(t4) -sin(t4) 0 0; sin(t4) cos(t4) 0 0; 0 0 1 0; 0 0 0 1];
%T7 = [1 0 0 0; 0 1 0 0; 0 0 1 l6; 0 0 0 1];
%T8 = [1 0 0 l7; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%P = [0;0;0;1];
%A= simplify(R1*T1*T2*R2*R3*T3*R4*T4*R5*T5*R6*T6*R7*T7*T8*P);
%disp(A);

syms t1 t2 t3 t4;
l1=50; l2 =30; l3=10; l4=20; l5=15; l6=10; l7 =20; l8=5;

for t1=0:0.1:3.14*2
    for t2=0:0.1:3.14
        for t3=0:0.1:3.14
            x =-sin(t1)*(l2 + l5*cos(t2 + t3) + l4*cos(t2) + l6*cos(t2 + t3 + t4));
             y =cos(t1)*(l2 + l5*cos(t2 + t3) + l4*cos(t2) + l6*cos(t2 + t3 + t4));
             z = l1 + l3 + l5*sin(t2 + t3) + l4*sin(t2) + l6*sin(t2 + t3 + t4);
        end
    end
end

                
