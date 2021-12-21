%%
fid = fopen('input.txt','rt');
input = textscan(fid,'%u');
fclose(fid);
input = input{1};

%size(input)
input0 = [199
200
208
210
200
207
240
269
260
263];

f = @(x) sum(diff(x) > 0);

assert(f(input0) == 7)

% How many measurements are larger than the previous ones?
f(input)

%%


