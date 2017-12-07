% Householder reflection
% Written for Octave / Matlab


function [W,R] = house (A)	% Dec
	[m,n] = size(A);		% Set size
	e = eye(m,n);			% Git identity
	for k = 1:n			% k: 1-> #columns
	    x = A(k:m,k) ;   		% x: (m-k)x(k)
	    v = x + sign(x(1))*norm(x)*e(k:m,k);		% Algo...
	    v = v/norm(v);					% Normalize v
	    A(k:m,k:n) = A(k:m,k:n)-2*v*(v.')*(A(k:m,k:n));
	    W(k:m,k)=v;
	    
	end
	R = A;
end
    
