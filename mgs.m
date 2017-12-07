% Modified Gram-Schmidt Orthonormalization Algorithm
% Written for Octave / Matlab

function [q,r] = mgs(A)

	[m,n] = size(A);
	r = zeros(n,n);
	q= zeros(m,n);
	for j=1:n
	    v = A(:,j);
	    for i = 1:j-1
		r(i,j) = q(:,i)'*v;
		v = v - r(i,j)*q(:,i);
	    end
	    r(j,j) = norm(v);
	    q(:,j)= v/r(j,j);
	end

end
