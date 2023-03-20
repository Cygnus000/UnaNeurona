clc
clear all
close all

figure(1)
plot(0,0,'s','MarkerSize',20,'MarkerEdgeColor','b','MarkerFaceColor','b')
grid on
hold on
plot(1,0,'s','MarkerSize',20,'MarkerEdgeColor','b','MarkerFaceColor','b')
plot(0,1,'s','MarkerSize',20,'MarkerEdgeColor','b','MarkerFaceColor','b')

plot(1,1,'s','MarkerSize',20,'MarkerEdgeColor','r','MarkerFaceColor','r')
axis([0 2 0 2])

% graficar plano de separación
x=-0.5:0.1:2;
b=1.5;
y=-x+b;
plot(x,y,'g','LineWidth',5)

%Verificar
x1=input('Entrada 1:   ');
x2=input('Entrada 2:   ');
w1=1;
w2=1;
bias=-1.5;
h_x=(w1*x1)+(w2*x2)+bias
sigmoid=1/(1+exp(-h_x))

%programando funcion escalon
if sigmoid>=0.5
    f_x=sigmoid
    plot(x1,x2,'o','MarkerSize',20,'MarkerEdgeColor','r','MarkerFaceColor','k')

else
    f_x=sigmoid
        plot(x1,x2,'o','MarkerSize',20,'MarkerEdgeColor','b','MarkerFaceColor','k')

end
