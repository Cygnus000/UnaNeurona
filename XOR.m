clc
clear all
close all

figure(1)
plot(0,0,'s','MarkerSize',20,'MarkerEdgeColor','b','MarkerFaceColor','b')
grid on
hold on
plot(1,0,'s','MarkerSize',20,'MarkerEdgeColor','b','MarkerFaceColor','b')
plot(0,1,'s','MarkerSize',20,'MarkerEdgeColor','b','MarkerFaceColor','b')

plot(1,1,'s','MarkerSize',20,'MarkerEdgeColor','b','MarkerFaceColor','b')
axis([0 2 0 2])

% graficar plano de separación
x=-0.5:0.1:2;
b=1.5;
y=-x+b;
plot(x,y,'g','LineWidth',5)

% graficar segundo plano de separación
x=-0.5:0.1:2;
b=0.5;
y=-x+b;
plot(x,y,'k','LineWidth',5)

%Verificar
x1=input('Entrada 1:   ');
x2=input('Entrada 2:   ');
w1=1;
w2=1;
z1=1;
z2=1;
bias2=-0.5;
bias=-1.5;
h_x=(w1*x1)+(w2*x2)+bias
h_z=(z1*x1)+(z2*x2)+bias2

%programando funcion escalon
if h_x<=0 & h_z>=0
    f_x=1
    plot(x1,x2,'o','MarkerSize',20,'MarkerEdgeColor','g','MarkerFaceColor','g')

else
    f_x=0
        plot(x1,x2,'o','MarkerSize',20,'MarkerEdgeColor','r','MarkerFaceColor','r')

end