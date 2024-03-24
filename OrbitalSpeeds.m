% Solar System Orbital Speeds Tabulation
% Coded by Luis E. Salaverria, SV Aerospace
% Coded in Matlab R2021b
%
% Version-1 2024-03-24
%        Initial Release

clear all;
clc;

horbit=300E3;

G=6.67408E-11;

Msun=1.98847E30;
MMercury=3.302E23;
MVenus=4.8690E24;
MEarth=5.972E24;
MMars=6.4191E23;
MJupiter=1.8987E27;
MSaturn=5.6851E26;
MUranus=8.6849E25;
MNeptune=1.0244E26;

rMercury=2440.53E3;
rVenus=6051.8E3;
rEarth=6378.1366E3;
rMars=3396.19E3;
rJupiter=71492E3;
rSaturn=60268E3;
rUranus=25559E3;
rNeptune=24764E3;

dMercury=57909175.0E3;
dVenus=108208930.0E3;
dEarth=149597890.0E3;
dMars=227936640.0E3;
dJupiter=778412010.0E3;
dSaturn=1426725400.0E3;
dUranus=2870972200.0E3;
dNeptune=4498252900.0E3;

vsMercury=sqrt(G*Msun/dMercury)/1E3;
vsVenus=sqrt(G*Msun/dVenus)/1E3;
vsEarth=sqrt(G*Msun/dEarth)/1E3;
vsMars=sqrt(G*Msun/dMars)/1E3;
vsJupiter=sqrt(G*Msun/dJupiter)/1E3;
vsSaturn=sqrt(G*Msun/dSaturn)/1E3;
vsUranus=sqrt(G*Msun/dUranus)/1E3;
vsNeptune=sqrt(G*Msun/dNeptune)/1E3;

vpMercury=sqrt(G*MMercury/(rMercury+horbit))/1E3;
vpVenus=sqrt(G*MVenus/(rVenus+horbit))/1E3;
vpEarth=sqrt(G*MEarth/(rEarth+horbit))/1E3;
vpMars=sqrt(G*MMars/(rMars+horbit))/1E3;
vpJupiter=sqrt(G*MJupiter/(rJupiter+horbit))/1E3;
vpSaturn=sqrt(G*MSaturn/(rSaturn+horbit))/1E3;
vpUranus=sqrt(G*MUranus/(rUranus+horbit))/1E3;
vpNeptune=sqrt(G*MNeptune/(rNeptune+horbit))/1E3;


fprintf('Planet     Orbital Speed   Escape Speed    Orbital Speed   Escape Speed \n')
fprintf('           about Sun       about Sun       about Planet    About Planet \n')
fprintf('           [km/s]          [km/s]          [km/s]          [km/s]\n')
fprintf('Mercury    %.3f          %.3f          %.3f           %.3f\n',vsMercury,vsMercury*sqrt(2),vpMercury,vpMercury*sqrt(2));
fprintf('Venus      %.3f          %.3f          %.3f           %.3f\n',vsVenus,vsVenus*sqrt(2),vpVenus,vpVenus*sqrt(2));
fprintf('Earth      %.3f          %.3f          %.3f           %.3f\n',vsEarth,vsEarth*sqrt(2),vpEarth,vpEarth*sqrt(2));
fprintf('Mars       %.3f          %.3f          %.3f           %.3f\n',vsMars,vsMars*sqrt(2),vpMars,vpMars*sqrt(2));
fprintf('Jupiter    %.3f          %.3f          %.3f          %.3f\n',vsJupiter,vsJupiter*sqrt(2),vpJupiter,vpJupiter*sqrt(2));
fprintf('Saturn     %.3f           %.3f          %.3f          %.3f\n',vsSaturn,vsSaturn*sqrt(2),vpSaturn,vpSaturn*sqrt(2));
fprintf('Uranus     %.3f           %.3f           %.3f          %.3f\n',vsUranus,vsUranus*sqrt(2),vpUranus,vpUranus*sqrt(2));
fprintf('Neptune    %.3f           %.3f           %.3f          %.3f\n',vsNeptune,vsNeptune*sqrt(2),vpNeptune,vpNeptune*sqrt(2));
