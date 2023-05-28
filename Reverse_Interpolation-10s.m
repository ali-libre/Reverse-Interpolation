clear all
close all
clc
syms x y l k FArray
#disp ('start')
k = [ 0 10 20 30 40 50 60 70 80 90];
l = [ 0 70 135 201 265 306 346 378 395 401];
plot (l , k)
for loop = 1: length(l)
  FArray(loop) = x;
endfor
for loop = 1:length(l)

  FArray(loop) = 1;
  #_____________________________________________________
  #up calculate
  for loop1 = 1:length(l)
    if loop > loop1
      FArray(loop) = FArray(loop) * (x + l(loop1));
    endif
    if loop < loop1
      FArray(loop) = FArray(loop) * (x + l(loop1));
    endif
  endfor
  #_____________________________________________________
  #down calculate
  for loop1 = 1:length(l)
    if loop > loop1
      FArray(loop) = FArray(loop) / (l(loop) - l(loop1));
    endif
    if loop < loop1
      FArray(loop) = FArray(loop) / (l(loop) - l(loop1));
    endif
  endfor

endfor

FArray;
y = 0;
for loop = 1:length(l)
  y = y + ( k(loop) * FArray(loop) );
endfor
disp('calculated')
y
simplify(y)
