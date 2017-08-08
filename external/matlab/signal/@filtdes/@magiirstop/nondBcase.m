function nondBcase(h,d)
%nondBcase Handle the linear case.
%
% This should be a private method.

%   Author(s): R. Losada
%   Copyright 1988-2002 The MathWorks, Inc.

convertmag(h,d,...
    {'Astop'},...
    {'Estop'},...
    {'stop'},...
    @tosquared);