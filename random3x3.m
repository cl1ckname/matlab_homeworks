function [matrix] = untitled(file)
%UNTITLED Random matrxi to file
matrix = rand(3);
if file == int2str(1)
    fprintf(1, "%.3f\t%.3f\t%.3\n%.3f\t%.3f\t%.3\n%.3f\t%.3f\t%.3\n", matrix);
else
    fprintf(file, "%10.3f\t%10.3f\t%10.3\n", matrix);
end

