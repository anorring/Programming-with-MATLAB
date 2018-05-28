function cv = logipack(L)
    [r c] = size(L);
    cv = cell(1,r);
    for ii = 1:r
        cv{ii} = find(L(ii,:));
        if isempty(cv{ii})      % find can return 1x0 empty arrays
            cv{ii} = [];        % so we make sure it is 0x0
        end
    end
end 