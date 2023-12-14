function matrix = import_freefem_matrix(filename)
%% 
%  Usage: 
%   matrix = import_freefem_matrix(<filename.txt>)
%             for real-valued dense matrices
%
%   matrix = import_freefem_matrix(<filename.txt>,'sparse') 
%             for sparse matrices
%
%   matrix = import_freefem_matrix(<filename.txt>,'complex') 
%             for complex matrices
%
%   matrix = import_freefem_matrix(<filename.txt>,'sparse','complex') 
%             for sparse complex matrices
%               
%  
%  Author: 
%   Jet Tang
%   University of Basel
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



%#ok<*ASGLU>
%var = varargin;
%[sparseflag,var]  = hasattribute(var,'sparse');
%[complexflag,var] = hasattribute(var,'complex'); 

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
fid  = fopen(filename,'r');

        fmt   = '%f %f %f';
        data  = cell2mat(textscan(fid,fmt,count,'EndOfLine','\n'));
        matrix = sparse(data(:,1),data(:,2),data(:,3),n,m);

fclose(fid);
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
end