function vector = import_freefem_vector(filename)
%% 
%  Usage: 
%   vector = import_freefem_vector(<filename.txt>)
%             for real-valued vectors
%
%   vector = import_freefem_vector(<filename.txt>,'complex') 
%             for complex-valued vectors             
%  
%  Author: 
%   Jet Tang
%   University of Basel
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


%[complexflag,~] = hasattribute(varargin,'complex');
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
fid  = fopen(filename,'r');

    fmt  = '%f';
    count = str2double(fgets(fid));
    data = cell2mat(textscan(fid,fmt,count,'EndOfLine','\n'));
    vector = data;

fclose(fid);
