function c = centuries(n)
    if ~isscalar(n) || n < 1 || n > 3000 || n ~= floor(n)
        c = '';
    else
        cents = {'I'; 'II'; 'III'; 'IV'; 'V'; 'VI'; 'VII'; 'VIII'; 'IX'; 'X';
              'XI'; 'XII'; 'XIII'; 'XIV'; 'XV'; 'XVI'; 'XVII'; 'XVIII'; 'XIX'; 'XX';
              'XXI'; 'XXII'; 'XXIII'; 'XXIV'; 'XXV'; 'XXVI'; 'XXVII'; 'XXVIII'; 'XXIX'; 'XXX'};
        c = cents{ceil(n/100)};
    end
end