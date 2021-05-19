function res =  parse(fileName, pageList, roleList)
    rls = [];
    for sheet = pageList
        tab = readtable(fileName, "Sheet", sheet);
        for i = roleList
            disp(i)
            t = [string(tab.x___(tab.x____== i))];
            rls = [rls; [i sprintf("%s; ",t')]];
        end
        res = table(rls);
    end
end

