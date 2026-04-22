%% aggiungiamo i controllori dei giunti

[Cv1, notchv1, P1] = carica_controllore(1,80,605, 0.1, 0.6);
[Cv2, notchv2, P2] = carica_controllore(2,90,660, 0.1, 0.4);
[Cv3, notchv3, P3] = carica_controllore(3,200,900, 0.1, 0.3);


function [C, notch, P] = carica_controllore(jointNumber,wc,wn, xci_z, xci_p)
    load("./matlab/modello/risultati/model joint/model_joint"+jointNumber+".mat");
    s=tf('s');
    P=tf(modello_continuo);
    wi=wc/20; % pulsazione azione integrale
    Ti=1/wi;
    Co=1+1/(Ti*s);
    notch=(s^2+2*xci_z*wn*s+wn^2)/(s^2+2*xci_p*wn*s+wn^2);
    Kp=1/abs(freqresp(Co*P*notch,wc));
    C=Kp*Co;
end