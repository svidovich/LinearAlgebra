% Rayleigh Quotient for Eigenvalue Problems
% Written for Octave / Matlab

function [lam,v,error] = Rayleigh(A,v0,u)	% Dec
	v = v0/norm(v0);			% Normalize v
	lam = u; 				% Set
	k = 1; 					% iter val
	error(k) = norm(A*v - lam*v); 		% Check error; git tol
	while error(k) > 10^(-6)		
	   k = k+1; 				% iter
	   v1 = (A - lam*eye(length(v0)))\v; 	% Algo
	   v = v1/norm(v1);			% Normalize
	   lam = v'*A*v;			% Algo
	   error(k) = norm(A*v - lam *v); 	% reset error
	end
