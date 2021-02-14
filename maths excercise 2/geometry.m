function run_geometry(q,n)
  geometry(0,1);
endfunction
function sum = geometry(q,n)
  c = abs(q)
  if c>=1
    disp('diverge');
  endif
  result = 1/(1-q)
endfunction

