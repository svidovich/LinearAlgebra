% Power Iteration for Eigenvalue Problems
% Written for Octave / Matlab

function [lam , v , error] = poweriter(A, v0)	% Dec
	v = v0/norm(v0);			% Normalize v	
	lam = v.'*A*v;				% set lam
	r = 1;					% iter val
	error(r) = norm(A*v -lam*v);		% git tol
	while error > 10^-6			
	    v1 = A*v;				% Multiply by A
	    v = v1 / norm(v1);			% Normalize
	    lam = v.'*A*v;			% set lam
	    r=r+1;				% iter
	    error(r) = norm(A*v-lam*v);		% set tol
	end
