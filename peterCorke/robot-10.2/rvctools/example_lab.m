clear all
close all
clc

a = [1,1,1,1,1,1];
alpha = [0,0,0,0,0,0];
theta = [0,0,0,0,0,0];
d = [0,0,0,0,0,0];
DH = [theta',d',a',alpha'];

robotEsercizio = SerialLink(DH)

%abbiamo 3 giunti del robot
robotEsercizio.name = 'robot';

robotEsercizio.offset = [0,0,0,0,0,0];
%limite inferiore dei giunti
%robotEsercizio.qlim(:,2)
%default base del robot su zero
%(eseguire il comando nomerobot.base mi dà l'indentià)

robotEsercizio.plot([0,0,0,0,0,0])


zeroPosition = [0 0 0 0 0 0];
%posa della pinza (end effector)
fkine_pose = robotEsercizio.fkine(zeroPosition)

%cinematica inversa
poseEE = eye(4); %identità 4x4
poseEE(1,4) = 3; %il 3 è il risultato della cinematica diretta
%dobbiamo sapere la pose del braccio finale (pinza)
robotEsercizio.ikine(fkine_pose)

%traittoria nello spazio dei giunti 
%tra una pose inziale e finale
dtStep = 50; %dalla pose iniziale a 50 step
goalPos = [0 0 1.57 0 0 0]; %posizione dei giunti definita in radianti
[Q,QD,QDD] = jtraj(zeroPosition,goalPos,dtStep); %posizione,velocità,accelerazione
robotEsercizio.plot(Q)
%%
A = eye(4);
B = A * trotz(90,'deg');

trplot(B) 
%vedere la transizione da A a B
tranimate(A,B)




