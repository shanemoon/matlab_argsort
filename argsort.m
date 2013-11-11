% Author      : Seungwhan (Shane) Moon
% Description : Return the indices of the sorted vector
% Last Update : November 10, 2013

% Input
%   - M    : Vertical vector of size [m X 1] to be sorted
%   - mode : 'ascend' or 'descend'

% Usage
%   - indices = argsort(M)
%   - indices = argsort(M, mode)
%   - [indices, sorted_M] = argsort(M, ...)

% Example
%   - M = [4; 1; 3; 5];
%   - argsort(M, 'descend')
%   - ans = 
%       4
%       1
%       3
%       2


function [sorted_indices, sorted_M] = argsort(M, mode)   
    if (~exist('mode', 'var'))
        mode = 'ascend';
    end    
    
    nRows = size(M, 1);
    indices = (1 : nRows)';
    
    M_with_indices = horzcat(M, indices);
    [sorted_M, sorted_indices] = sort(M_with_indices(:,1), mode);
end