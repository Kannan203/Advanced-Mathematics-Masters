%% Bucket cleaning
al = 0.01; %conc of poison
bt = 1;%poisonwater
v = 1;
ep = 10.^-9;
%% Compute iteration
n = ceil(log(ep)/log(al));
%% Volume of Water Required to clean
Vol = (bt-al)*v*n; % (poisonwater - poison)*ntimes
%% time required for cleaning
for bt 
n1 = ceil(log(ep)/(log(al)-log(bt)))%
for k = 1:n1
t_cl = (bt-al)*v*k;
T_cl(k) = t_cl;  
end
%% time to minimize cleaning
total_time = zeros(1,5);
for bt = 0:0.1:1
for Tr = 1:5
  for T = 1:5 %time to fill the cup
T1 = T/v;
for Tr = 1:5
Total_time = Vol*T1 + n*Tr;
 total_time(Tr) = Total_time;
end
end
end
end
figure(1);
plot(total_time);
figure(2)
plot(T_cl)
