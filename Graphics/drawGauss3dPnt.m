function drawGauss3dPnt(hnds,x,P,label,color,posOffset,ns,NP)

% DRAWGAUSS3DPNT  Draw Gaussian 3d point

if nargin < 8
    NP = 10;
    if nargin < 7
        ns = 3;
    end
end

% the expectation's mean:
set(hnds.mean,...
    'xdata',   x(1),...
    'ydata',   x(2),...
    'zdata',   x(3),...
    'color',   color.mean,...
    'visible', 'on');

% the expectation's ellipse
[X,Y,Z] = cov3elli(x, P, ns, NP) ;
set(hnds.ellipse,...
    'xdata',   X,...
    'ydata',   Y,...
    'zdata',   Z,...
    'color',   color.ellip,...
    'visible', 'on');

% the label
set(hnds.label,...
    'position', x + posOffset,...
    'string',   label,...
    'visible',  'on');
