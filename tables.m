num = readtable("data/fileExcel.xlsx");
leaders =  [string(num.x___(num.x____=="Руководитель"))];
workers = [string(num.x___(num.x____ == "Исполнитель"))];
roles = ["leaders"; "workers"];
peoples = [sprintf("%s; ", leaders); sprintf("%s; ", workers)];
t = table(roles, peoples);
writetable(t, "outFile.xlsx")
%%
t = readtable("data/Data_18032020.xlsx");
mm = t.x____________;
age = fix(etime(datevec(datetime(clock)), datevec(mm))/60/60/24/365);

t.age = age; %nice

ids = strlength(string(t.id1)) + strlength(string(t.id2)) == 22; %nice again

k  = t.x_______________________ ./ t.x__________________;

val = ones(length(t.id1), 1);
val((k<=0.1)) = 0.1;
val((k>0.1) & (k<=0.2)) = 0.2;
val((k>0.2) & (k<=0.3)) = 0.3;
val((k>0.3) & (k<=0.4)) = 0.4;
val((k>0.4) & (k<=0.5)) = 0.5;

t.val = val;
writetable(t, "OutFile2.xlsx");
