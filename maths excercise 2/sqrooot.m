function sqrooot(n)
  e = 0.000001;
  if n==0 || n==1
    result = n;
  endif
  y = 1;
  x = n;
  while (x-y>e)
    x = (x+y)/2;
    y = n/x;
  endwhile
  disp(x)
endfunction
