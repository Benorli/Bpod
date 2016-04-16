% Example state matrix: Two states; Chase lights to exit

sma = NewStateMatrix();

sma = AddState(sma, 'Name', 'Delay', ...
    'Timer', 1,...
    'StateChangeConditions', {'Tup', 'TriggerSound'},...
    'OutputActions', {});
sma = AddState(sma, 'Name', 'TriggerSound', ...
    'Timer', 0.001,...
    'StateChangeConditions', {'Tup', 'exit'},...
    'OutputActions', {'BNCState', 1, 'SoftCode', 1});