% Iterative QR algorithm
% Written for Octave / Matlab

function [A,n] = qralg(A)		% dec.
	[m,n]=size(A);			% set size for A
	k=1;				% iter values
	n=0;
	for b = m:-1:2			% b: #rows of A -> 2
	N = abs(A(b,b-1));		% Set
	a = A(1:b,1:b);			% Set

	while N>(10^(-12))		% Checktol and advance
	    [Q,R] = qr(a);		% Decompose
	    a = R * Q ; 		% Calc
	    N = abs(a(b,b-1));		% Set
	    n(k)= abs(a(b,b-1));	% Set
	    k = k+1;			% iter
	end
	    A(1:b,1:b) = a(1:b,1:b);	%finish
end
