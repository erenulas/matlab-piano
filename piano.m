% This file contains only the function that calculates the frequency.


function [x] = piano(n,q,b)
  
   keyFreq = 2.^((n-1)/12).*27.5;   %formula for the piano key frequencies
   
   fs = 44100; 
   
   t=0:1/fs:2;    % time variable
   
   a = [0.42,0.13,0.02,0.28,0.01];
   
  f1 = a(1).*sin(2.*pi.*keyFreq.*t.*1); % fundamental
  f2 = a(2).*sin(2.*pi.*keyFreq.*t.*2); % harmonic
  f3 = a(3).*sin(2.*pi.*keyFreq.*t.*3); % harmonic
  f4 = a(4).*sin(2.*pi.*keyFreq.*t.*4);
  f5 = a(5).*sin(2.*pi.*keyFreq.*t.*5);
  
   x = q.*exp(-t*b).*(f1+f2+f3+f4+f5);

end




            




   
