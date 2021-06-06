%Proyecto final Teoria electromagnetica 
%Luis Javier Nij Culajay
%Carlos Roberto Avendaño Quinteros
%Mariandree Rivera Fernandez 
%% reset y limpieza
clc;
clear;

%% inciso b ejercicio 1
k=12*10^9;
epsi=1;
notacion_carga = 10^-9;
constante= k*notacion_carga/epsi;
x1 = 70;
y1 = 70;
z1 = 70;
n = 2;  % numero de cargas 
Electric1 = zeros(x1,y1);
volt1= zeros(x1,y1);

Elex1= Electric1;
Eley1= Electric1;
r= Electric1;
Q1= [2,-2];
xq1= [5,-5];
yq1= [0,0];
a1=2
rangox1= (1:x1)-35;
rangoy1= (1:y1)-35;
rangoz1= (1:z1)-35;

[meshgridx,meshgridy]=meshgrid(rangox1,rangoy1);


for k = 1:n
    r_square=(meshgridx-xq1(k)).^2+(meshgridy-yq1(k)).^2;
    r=sqrt(r_square);
    Elex1 = Elex1 + constante*Q1(k)*4*(meshgridx-xq1(k))./r.^3;      
    Eley1 =Eley1 + constante*Q1(k)*4*(meshgridy-yq1(k))./r.^3;      
    volt1 = volt1 + constante*Q1(k)./r.^2;                      
end
Electric1=sqrt(Elex1.^2+Eley1.^2);

figure(1);
subplot(1,3,1);
contour_range=0:1:20;
contour(rangox1,rangoy1,Electric1,contour_range,'linewidth',1.5);
title('Campo electrico eje x');
axis([-15 15 -15 15]);
axis square;
grid on;
xlabel('x');
ylabel('y');
hold on;

subplot(1,3,2);
contour_range=0:1:20;
contour(rangox1,rangoy1,Electric1,contour_range,'linewidth',1.5);
title('Campo electrico eje y');
axis([-15 15 -15 15]);
axis square;
grid on;
xlabel('y');
ylabel('z');

hold on;

subplot(1,3,3);
contour_range=0:1:20;
contour(rangox1,rangoy1,Electric1,contour_range,'linewidth',1.5);
title('Campo electrico eje z');
axis([-15 15 -15 15]);
axis square;
grid on;
xlabel('z');
ylabel('x');
hold on;

figure(2);
 subplot(1,3,1);
h=quiver(rangox1,rangoy1,Elex1,Eley1,'autoscalefactor',1.6);
set(h,'color',[1 0 0],'linewidth',1.2);
box on
axis square;
 h=rectangle('Position',[5-a1/2,0-a1/2,a1,a1],'curvature',[1 1]);
 set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1]);
 text(4.5,0,'+','Color','white','FontSize',20);
 
 h=rectangle('Position',[-5-a1/2,0-a1/2,a1,a1],'curvature',[1 1]);
set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1]);
 text(-5.2,0.2,'-','Color','white','FontSize',20);
title('Lineas de campo eje x');
axis([-8 8 -8 8]);


xlabel('x');
ylabel('y');
hold on;

 subplot(1,3,2);
h=quiver(rangox1,rangoy1,Elex1,Eley1,'autoscalefactor',1.6);
set(h,'color',[1 0 0],'linewidth',1.2);
box on
axis square;
 h=rectangle('Position',[5-a1/2,0-a1/2,a1,a1],'curvature',[1 1]);
 set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1]);
 text(4.5,0,'+','Color','white','FontSize',20);
 
 h=rectangle('Position',[-5-a1/2,0-a1/2,a1,a1],'curvature',[1 1]);
set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1]);
 text(-5.2,0.2,'-','Color','white','FontSize',20);
title('Lineas de campo eje y');
axis([-8 8 -8 8]);


xlabel('y');
ylabel('z');
hold on;



 subplot(1,3,3);
h=quiver(rangox1,rangoy1,Elex1,Eley1,'autoscalefactor',1.6);
set(h,'color',[1 0 0],'linewidth',1.2);
box on
axis square;
 h=rectangle('Position',[5-a1/2,0-a1/2,a1,a1],'curvature',[1 1]);
 set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1]);
 text(4.5,0,'+','Color','white','FontSize',20);
 
 h=rectangle('Position',[-5-a1/2,0-a1/2,a1,a1],'curvature',[1 1]);
set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1]);
 text(-5.2,0.2,'-','Color','white','FontSize',20);
title('Lineas de campo eje z');
axis([-8 8 -8 8]);


xlabel('z');
ylabel('x');
hold off;

figure(3);

subplot(1,3,1);
surf(meshgridx,meshgridy,volt1);
title('Potencial dipolo eje x');
zlabel('V');
xlabel('x'); 
ylabel('y');
hold on;
subplot(1,3,2);
surf(meshgridx,meshgridy,volt1);
title('Potencial dipolo eje x');
zlabel('V');
xlabel('y'); 
ylabel('z');
hold on;
subplot(1,3,3);
surf(meshgridx,meshgridy,volt1);
title('Potencial dipolo eje x');
zlabel('V');
xlabel('z'); 
ylabel('x');
hold off;
%% inciso c ejercicio 1
k=12*10^9;
epsi=1;
notacion_carga = 10^-9;
constante= k*notacion_carga/epsi;
x2 = 70;
y2 = 70;
z2 = 70;
n = 2;  % numero de cargas 
Electric2 = zeros(x2,y2);
volt2= zeros(x2,y2);

Elex2= Electric2;
Eley2= Electric2;
r= Electric2;
Q2= [2,-2];
xq2= [5,-5];
yq2= [+3,-3];

rangox2= (1:x2)-35;
rangoy2= (1:y2)-35;
rangoz2= (1:z2)-35;

[meshgridx2,meshgridy2]=meshgrid(rangox2,rangoy2);


for k = 1:n
    r_square=(meshgridx2-xq2(k)).^2+(meshgridy2-yq2(k)).^2;
    r=sqrt(r_square);
    Elex2 = Elex2 + constante*Q2(k)*4*(meshgridx2-xq2(k))./r.^3;      
    Eley2 =Eley2 + constante*Q2(k)*4*(meshgridy2-yq2(k))./r.^3;      
    volt2 = volt2 + constante*Q2(k)./r.^2;                      
end
Electric2=sqrt(Elex2.^2+Eley2.^2);

figure(4);
subplot(1,2,1);
contour_range=0:1:20;
contour(rangox2,rangoy2,Electric2,contour_range,'linewidth',1.5);
title('Campo electrico eje x');
axis([-15 15 -15 15]);
axis square;
grid on;
xlabel('x');
ylabel('z');
hold on;


 subplot(1,2,2);
h=quiver(rangox2,rangoy2,Elex2,Eley2,'autoscalefactor',1.6);
title('Lineas de campo eje x');
set(h,'color',[1 0 0],'linewidth',1.2);
box on
axis square;
 h=rectangle('Position',[5-a1/2,3-a1/2,a1,a1],'curvature',[1 1]);
 set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1]);
 text(4.7,3,'+','Color','white','FontSize',30);
 
 h=rectangle('Position',[-5-a1/2,-3-a1/2,a1,a1],'curvature',[1 1]);
set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1]);
 text(-5.2,-2.8,'-','Color','white','FontSize',30);
title('Lineas de campo eje x');
axis([-8 8 -8 8]);
xlabel('z');
ylabel('z');

hold off;


%% inciso d ejercicio 1

k=12*10^9;
epsi=1;
notacion_carga = 10^-9;
constante= k*notacion_carga/epsi;
x3 = 70;
y3 = 70;
z3 = 70;
n=4;

Electric3 = zeros(x3,y3);
volt3= zeros(x3,y3);

Elex3= Electric3;
Eley3= Electric3;
r= Electric3;

Q3 = [2,-2,2,-2];
% Array of locations
xq3 = [-5,-5,5,5];
yq3 = [5,-5,-5,5];
rangox3= (1:x3)-35;
rangoy3= (1:y3)-35;
rangoz3= (1:z3)-35;
[meshgridx3,meshgridy3]=meshgrid(rangox3,rangoy3);

for k = 1:n
    r_square=(meshgridx3-xq3(k)).^2+(meshgridy3-yq3(k)).^2;
    r=sqrt(r_square);
    Elex3 = Elex3 + constante*Q3(k)*4*(meshgridx3-xq3(k))./r.^3;      
    Eley3 =Eley3 + constante*Q3(k)*4*(meshgridy3-yq3(k))./r.^3;      
    volt3 = volt3 + constante*Q3(k)./r.^2;                      
end
Electric3=sqrt(Elex3.^2+Eley3.^2);



figure(5);
 subplot(1,2,1);
contour_range=0:1:20;
contour(rangox3,rangoy3,Electric3,contour_range,'linewidth',1.5);
title('Campo electrico');
axis([-15 15 -15 15]);
axis square;
grid on;
xlabel('x');
ylabel('y');
hold on;

 subplot(1,2,2);
h= quiver(rangox3,rangoy3,Elex3,Eley3,'autoscalefactor',1.2);
set(h,'color',[1 0 0],'linewidth',1.8);

 h=rectangle('Position',[-5-a1/2,5-a1/2,a1,a1],'curvature',[1 1]);
 set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1]);
 text(-5.3,5,'+','Color','white','FontSize',30);
 
 h=rectangle('Position',[-5-a1/2,-5-a1/2,a1,a1],'curvature',[1 1]);
set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1]);
 text(-5.2,-4.9,'-','Color','white','FontSize',30);
 
 h=rectangle('Position',[5-a1/2,-5-a1/2,a1,a1],'curvature',[1 1]);
 set(h,'Facecolor',[1 0 0],'Edgecolor',[1 0 1]);
 text(4.8,-5,'+','Color','white','FontSize',30);
 
 h=rectangle('Position',[5-a1/2,5-a1/2,a1,a1],'curvature',[1 1]);
set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1]);
 text(4.8,5.2,'-','Color','white','FontSize',30);
box on
title('Lineas de campo');
axis([-8 8 -8 8]);
axis square;
xlabel('x');
ylabel('y');
hold on;

figure(6);
s=surf(meshgridx3,meshgridy3,volt3,'FaceAlpha',0.9);
colorbar;

title('Potencial cuadripolo');
zlabel('V');
xlabel('x'); 
ylabel('y');
hold on;


%% inciso f ejercicio 1

k=12*10^9;
epsi=1;
notacion_carga = 10^-9;
constante= k*notacion_carga/epsi;
x4 = 70;
y4 = 70;
z4 = 70;
n = 1;  % numero de cargas 
Electric4 = zeros(x4,y4);
volt4= zeros(x4,y4);

Elex4= Electric4;
Eley4= Electric4;
r= Electric4;
Q4= [1];
xq4= [0];
yq4= [0];
a1=2
rangox4= (1:x4)-35;
rangoy4= (1:y4)-35;
rangoz4= (1:z4)-35;

[meshgridx4,meshgridy4]=meshgrid(rangox4,rangoy4);


for k = 1:n
    r_square=(meshgridx4-xq4(k)).^2+(meshgridy4-yq4(k)).^2;
    r=sqrt(r_square);     
     volt4 = volt4 + (1/(4*pi)).*(1/4-(r.^2)/120);                      
end
Electric4=sqrt(meshgridx4.^2+meshgridy4.^2);

figure(7);
s = surf(meshgridx4,meshgridy4,volt4,'FaceAlpha',0.5);
colorbar;
s.EdgeColor = 'flat';


         
           
title('	Potencial aproximado generado por la densidad de carga');
zlabel('V');
xlabel('x'); 
ylabel('y');






%% inciso b ejercicio 1 POLARIZACION **
%DESPLAZAMIENTO ELECTRICO VS DISTANCIA

Q9= [2];
r=0:1:15;
desp=(r<=5).*(0)+(r>5).*(Q9./(4.*pi.*(r.^2)));
plot(r,desp);
xlabel('distancia'); 

ylabel('Desplazamiento electrico'); 







