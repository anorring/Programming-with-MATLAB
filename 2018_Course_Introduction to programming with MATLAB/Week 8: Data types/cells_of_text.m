%% The ultimate legend of Big John
page{1} = 'You could find...';
page{2} = 'Tall, dark hair...';
page{3} = 'They say...';
page {4} = 'And when he...';
page {5} = 'On Big John.';

% check by whos
% access the different elements of pages by using {}
% class(page)
% class(page{1})
% size(page{1})

%% Print it
fprintf('\n');
for ii = 1:length(page)
    fprintf('%s\n',page{ii});
end
fprintf('\n');