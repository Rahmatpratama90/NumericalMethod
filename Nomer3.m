% karna dalam mg/komponen maka harus dikonversi ke kg dulu jadi 
% dik = logam = 0.015 , 0.017 ,  0.019 ; plastik 0.00025 0.00033 0.00042
% karet = 0.001 0.0012 0.0016 

clc
clear

A=[0.015  0.017  0.019 ;0.00025 0.00033 0.00042;  0.001 0.0012 0.0016 ];
b=[2.12; 0.0434; 0.164];

Ab=[A,b];

%pengurangan
program=Ab(2,1)/Ab(1,1);
Ab(2,:)=Ab(2,:)-program*Ab(1,:);

program=Ab(3,1)/Ab(1,1);
Ab(3,:)=Ab(3,:)-program*Ab(1,:);

program=Ab(3,2)/Ab(2,2);
Ab(3,:)=Ab(3,:)-program*Ab(2,:);

program=Ab(1,2)/Ab(2,2);
Ab(1,:)=Ab(1,:)-program*Ab(2,:);

%pembagian
Ab(1,:)=Ab(1,:)/Ab(1,1);
Ab(2,:)=Ab(2,:)/Ab(2,2);
Ab(3,:)=Ab(3,:)/Ab(3,3);

i=4;
Logam=Ab(1,i)
Plastik=Ab(2,i)
Karet=Ab(3,i)
