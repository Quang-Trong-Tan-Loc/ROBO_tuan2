% R1(y, t1) T1(z, -l1) R2(y, t2) T2(z, -l2)

%syms t1 t2 l1 l2;
%R1=[cos(t1) 0 sin(t1) 0; 0 1 0 0; -sin(t1) 0 cos(t1) 0; 0 0 0 1];
%T1=[1 0 0 0;0 1 0 0;0 0 1 -l1;0 0 0 1];
%R2=[cos(t2) 0 sin(t2) 0;0 1 0 0;-sin(t2) 0 cos(t2) 0;0 0 0 1];
%T2=[1 0 0 0;0 1 0 0;0 0 1 -l2;0 0 0 1];
%P=[0;0;0;1];
%A=simplify(R1*T1*R2*T2*P);
%disp(A);

 syms ta t2 t3 t4;
 l1= 50; l2= 10; l3= 5; l4= 20; l5= 20; l6=15; l7=10;
 for t1=0:0.1:2*3.14
     for t2=0:0.1:3.14
         x=- l2*sin(t1 + t2) - l1*sin(t1);
         y=0;
         z=- l2*cos(t1 + t2) - l1*cos(t1);
         plot3(x,y,z,'*');
         hold on
     end
 end
 


