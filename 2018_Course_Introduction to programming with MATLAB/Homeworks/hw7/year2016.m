
function out = year2016(m)
if ~isscalar(m) || m <1 || m~=fix(m)
    out = [];
else
VN = datenum([2016,m,1]):datenum([2016,m+1,1])-1;
DN = 1+mod(VN-3,7);
MC = {'January';'February';'March';'April';'May';'June';'July';'August';'September';'October';'November';'December'};
DC = {'Mon','Tue','Wed','Thu','Fri','Sat','Sun'};
out = struct('day',DC(DN),'date',num2cell(1:numel(VN)));
[out(:).month] = deal(MC{m});
end




%m.month = ['January','February','March','April','May','June','July','August','September','October','November','December']
%m.date = [1:31]
%m.day = 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'


%m = struct('month', {'January','February','March','April','May','June','July','August','September','October','November','December'}, 'date', [1:31], 'day', {'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'})