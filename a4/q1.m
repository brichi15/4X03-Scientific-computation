clear all ;
%obtain data for training
[points ,labels] = gettrainingdata;
%we try 3 learning rates
learning_rates = [0.1 0.05 0.01];
files = {'w1', 'w2', 'w3'};
niter = 1e6;
neurons = [10 16 2];
for i=1:numel(files)
netbp(points , labels ,neurons , learning_rates(i), niter , files{i});
end

