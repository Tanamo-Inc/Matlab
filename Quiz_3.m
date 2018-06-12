%{

DATE         : OCTOBER 2016,13
PROG         : TELECOMMUNICATION  ENGINEERING.
COURSE       : TE 461
%}
                % TEST 3
                
disp('TEST 3');

Vs = 5;
R = 5 ;
C = 0.000001;
Vc = 0:1:10;

%Allow user to input his/her values.
%R= input ('value of R: ');
%Vs= input('value of Vs: ');
%C= input('value of C: ');

t = (-log(Vs-Vc)*R*C)/Vs  ;

fprintf('The value for t is  %f \n',t);


plot(t,Vc);
 title('TANDOH ANTHONY N.')
    xlabel('T');
    ylabel('Vc');
    grid


    subplot(2,2,1)
    plot(t,Vc,'r o')
    title('subplot 1')
    xlabel('T');
    ylabel('Vc');
    grid
    legend('Vc against T');

 subplot(2,2,2)
    plot(Vs,t,'k ^')
    title('Subplot 2')
    xlabel('T');
    ylabel('s');
    grid
    legend('Vs against T');

 subplot(2,2,3)
    plot(Vs,t,'b v')
    title('Subplot 3')
    xlabel('T');
    ylabel('logVc');
    grid
    legend('logVc against T');


    subplot(2,2,4)
    plot(log(Vs),log(t),'g *')
    title('Subplot 4')
    xlabel('log(t)');
    ylabel('logVc');
    grid
    legend('logVc against logt');

                