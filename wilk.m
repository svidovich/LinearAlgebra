% Wilkinson shift code for Eigenvalue Problems
% Written for Octave / Matlab

function [A,n] = wilk(A)		% Dec
	[m,n]=size(A);			% Set Size
	k=1;				% Iter val
	n=0;
	for b = m:-1:2			% b: #rows->2
		N = abs(A(b,b-1));	% Set
		a = A(1:b,1:b);		% Set

	while N>(10^(-12))		% For N bigger than tol
	    s=(A(b-1,b-1)-A(b,b))/2;	% Algo...
	    mu =(A(b,b) - sign(s)*((A(b,b-1))^2))/(abs(s)+sqrt((s^2)+(A(b,b-1)^2)));
	    [Q,R] = qr(a-mu*eye(b,b));	% Do QR decomposition
	    a = R * Q + mu*eye(b,b) ; 	% Algo...
	    N = abs(a(b,b-1));
	    n(k)= abs(a(b,b-1));
	    k = k+1;
	end
	    A(1:b,1:b) = a(1:b,1:b);
end
